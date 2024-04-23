import 'package:cached_network_image/cached_network_image.dart';
import 'package:film_mate/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;
  final String imageUrl;

  const VideoWidget(
      {super.key, required this.videoUrl, required this.imageUrl});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late YoutubePlayerController _controller;
  bool isVideoLoaded = false;
  bool isMuted = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void loadVideo() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl)!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        loop: true,
      ),
    );
    setState(() {
      isVideoLoaded = true;
    });
  }

  void toggleMute() {
    if (isMuted) {
      setState(() {
        isMuted = !isMuted;
        _controller.unMute();
      });
    } else {
      setState(() {
        isMuted = !isMuted;
        _controller.mute();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if (!isVideoLoaded) {
          loadVideo();
        }
      },
      child: isVideoLoaded
          ? Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(
                  height: size.width * 0.55,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: YoutubePlayer(
                      controller: _controller,
                      bottomActions: [
                        CurrentPosition(),
                        ProgressBar(
                          colors: const ProgressBarColors(
                              playedColor: kSelectedBackgroundColor,
                              handleColor: kSelectedBackgroundColor,
                              backgroundColor: kBottomNavColor),
                          isExpanded: true,
                        ),
                      ],
                      thumbnail: Image.network(
                        widget.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: IconButton(
                        alignment: Alignment.center,
                        iconSize: 12,
                        color: Colors.white,
                        icon: Icon(isMuted
                            ? CupertinoIcons.volume_off
                            : CupertinoIcons.volume_up),
                        onPressed: toggleMute,
                      ),
                    ),
                  ),
                )
              ],
            )
          : GestureDetector(
              onTap: () {
                if (!isVideoLoaded) {
                  loadVideo();
                }
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.imageUrl,
                    imageBuilder: (context, imageProvider) => Container(
                      height: size.width * 0.55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: kBottomNavColor,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kBottomNavColor),
                        height: size.width * 0.55,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: kBackgroundColor.withOpacity(0.6),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: kSelectedBackgroundColor,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
