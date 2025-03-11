import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/services/chat_service.dart';
import 'package:film_mate/presentation/chat/widgets/message_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatRoom extends StatefulWidget {
  final String mediaId;
  final String? title;
  const ChatRoom({super.key, required this.mediaId, required this.title});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final TextEditingController _messageController = TextEditingController();
  final ChatServices _chatServices = ChatServices();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FocusNode _messageFocusNode = FocusNode();

  // Add ScrollController
  final ScrollController _scrollController = ScrollController();

  // Track if user is at bottom of chat
  bool _isAtBottom = true;
  bool _showScrollToBottom = false;
  int _previousMessageCount = 0;
  bool _initialScrollDone = false;

  // Cache the AppBar to prevent rebuilds
  late final PreferredSizeWidget _appBar;

  // Cache the message stream to prevent rebuilds
  late final Stream<QuerySnapshot> _messageStream;

  @override
  void initState() {
    super.initState();
    // Initialize the AppBar once
    _appBar = AppBar(
      foregroundColor: kWhite,
      backgroundColor: kSelectedBackgroundColor,
      title: Text(widget.title ?? "Chat Room ${widget.mediaId}"),
    );

    // Initialize the message stream once
    _messageStream = _chatServices.getMessages(widget.mediaId);

    // Listen to scroll events to track if user is at bottom
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (!_scrollController.hasClients || _scrollController.positions.isEmpty) {
      return;
    }

    try {
      final isAtBottom = (_scrollController.position.pixels >=
          (_scrollController.position.maxScrollExtent - 20));

      if (_isAtBottom != isAtBottom) {
        setState(() {
          _isAtBottom = isAtBottom;
          if (_isAtBottom) {
            _showScrollToBottom = false;
          }
        });
      }
    } catch (e) {
      // Handle any potential errors with scroll position
      log("Scroll listener error: $e");
    }
  }

  void _scrollToBottom() {
    if (!_scrollController.hasClients || _scrollController.positions.isEmpty) {
      return;
    }
    HapticFeedback.lightImpact();
    try {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
      setState(() {
        _showScrollToBottom = false;
        _isAtBottom = true;
      });
    } catch (e) {
      log("Scroll to bottom error: $e");
    }
  }

  // Try to scroll to bottom after a delay
  void _tryScrollToBottomDelayed(
      [Duration delay = const Duration(milliseconds: 300)]) {
    Future.delayed(delay, () {
      if (mounted && _scrollController.hasClients) {
        try {
          _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
        } catch (e) {
          log("Delayed scroll error: $e");
        }
      }
    });
  }

  // This function is called when new messages arrive
  void _handleNewMessages(int currentMessageCount) {
    // Handle initial auto-scroll
    if (!_initialScrollDone && currentMessageCount > 0) {
      _initialScrollDone = true;
      _tryScrollToBottomDelayed();
    }

    // For new messages when chat is already loaded
    if (_previousMessageCount > 0 &&
        currentMessageCount > _previousMessageCount) {
      if (_isAtBottom) {
        // If user is already at bottom, auto-scroll to show new message
        _tryScrollToBottomDelayed();
      } else if (!_showScrollToBottom) {
        // Otherwise show the scroll button if it's not already showing
        Future.microtask(() {
          if (mounted) {
            setState(() {
              _showScrollToBottom = true;
            });
          }
        });
      }
    }

    _previousMessageCount = currentMessageCount;
  }

  void sendMessage() async {
    if (_messageController.text.isNotEmpty) {
      await _chatServices.sendMessage(
        widget.mediaId,
        _messageController.text.trim(),
      );
      _messageController.clear();
      HapticFeedback.lightImpact();
      // Auto-scroll to bottom when sending a message
      _tryScrollToBottomDelayed(const Duration(milliseconds: 200));
    }
  }

  void _showDeleteDialog(
      BuildContext context, String mediaId, String messageId) {
    HapticFeedback.lightImpact();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete Message"),
        content: const Text("Are you sure you want to delete this message?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child:
                const Text("Cancel", style: TextStyle(color: Colors.black87)),
          ),
          TextButton(
            onPressed: () {
              _chatServices.deleteMessage(mediaId, messageId);
              Navigator.pop(context);
            },
            child: const Text("Delete", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar, // Use cached AppBar
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // Message list in a separate subtree
                Expanded(
                  child: MessageList(
                    messageStream: _messageStream,
                    firebaseAuth: _firebaseAuth,
                    scrollController: _scrollController,
                    onDeleteMessage: (messageId) =>
                        _showDeleteDialog(context, widget.mediaId, messageId),
                    onNewMessages: _handleNewMessages,
                  ),
                ),
                // Message input
                _buildMessageInput(),
              ],
            ),
            // New messages indicator/button
            if (_showScrollToBottom)
              Positioned(
                bottom: 100,
                right: 0,
                left: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: _scrollToBottom,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: kSelectedBackgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Text("New messages", style: TextStyle(color: kWhite)),
                          SizedBox(width: 4),
                          Icon(Icons.arrow_downward, color: kWhite, size: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 56,
                child: TextField(
                    controller: _messageController,
                    focusNode: _messageFocusNode,
                    cursorColor: kSelectedBackgroundColor,
                    style: const TextStyle(color: kWhite),
                    decoration: InputDecoration(
                      prefixIcon:
                          IconButton(onPressed: () {
                            
                          }, icon: Icon(Icons.link)),
                      filled: true,
                      hintText: 'Enter your message',
                      focusColor: kSelectedBackgroundColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      fillColor: kBottomNavColor,
                      hintStyle: const TextStyle(color: Colors.grey),
                      labelStyle: const TextStyle(color: kWhite),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: kSelectedBackgroundColor, width: 2.0)),
                    )),
              ),
            ),
          ),
          SizedBox(
              height: 54,
              child: ElevatedButton(
                  onPressed: sendMessage,
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Icon(
                    Icons.send,
                    color: kSelectedBackgroundColor,
                  )))
        ],
      ),
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    _messageFocusNode.dispose();
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }
}
