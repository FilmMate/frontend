import 'dart:developer';
import 'dart:math' show Random;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/presentation/accounts/widgets/info_card.dart';
import 'package:film_mate/presentation/accounts/widgets/profile_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:film_mate/core/colors.dart';
import 'package:shimmer/shimmer.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  String userName = '';
  String email = '';
  List<String> genres = [];
  String imageUrl = '';
  List<String> defaultImages = [
    "lib/assets/pics/girrafe.jpg",
    "lib/assets/pics/koala.jpg",
    "lib/assets/pics/panda.jpg",
    "lib/assets/pics/tiger.jpg",
    "lib/assets/pics/dino.jpg",
    "lib/assets/pics/monkey.jpg",
  ];

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  String getRandomImage() {
    final Random random = Random();
    return defaultImages[random.nextInt(defaultImages.length)];
  }

  Future<void> fetchUserData() async {
    try {
      String uid = FirebaseAuth.instance.currentUser?.uid ?? '';
      if (uid.isEmpty) return;

      DocumentReference userRef =
          FirebaseFirestore.instance.collection('users').doc(uid);
      DocumentSnapshot userDoc = await userRef.get();

      if (userDoc.exists) {
        Map<String, dynamic> data = userDoc.data() as Map<String, dynamic>;
        userName = data['user_name'] ?? 'Unknown';
        email = data['email'] ?? 'No Email';
        genres = (data['genre'] as List<dynamic>?)
                ?.map((g) => g['name'] as String)
                .toList() ??
            [];

        if (data['image_url'] == null) {
          imageUrl = getRandomImage();
          await userRef.update({'image_url': imageUrl});
        } else {
          imageUrl = data['image_url'];
        }
        setState(() {});
      }
    } catch (e) {
      log('Error fetching user data: $e');
    }
  }

  void _showImagePicker() {
    showModalBottomSheet(
      backgroundColor: kBackgroundColor,
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            children: defaultImages.map((img) {
              return GestureDetector(
                onTap: () async {
                  setState(() {
                    imageUrl = img;
                  });
                  Navigator.pop(context);
                  String uid = FirebaseAuth.instance.currentUser?.uid ?? '';
                  if (uid.isNotEmpty) {
                    await FirebaseFirestore.instance
                        .collection('users')
                        .doc(uid)
                        .update({'image_url': img});
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(img),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSelectedBackgroundColor,
        foregroundColor: Colors.white,
        title: const Text("Profile"),
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  BuildProfileImage(imageUrl: imageUrl),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: kSelectedBackgroundColor,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      iconSize: 15,
                      icon: const Icon(Icons.edit, color: Colors.white),
                      onPressed: _showImagePicker,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              InfoCard(icon: Icons.person, label: "Username", value: userName),
              const SizedBox(height: 12),
              InfoCard(icon: Icons.email, label: "Email", value: email),
              const SizedBox(height: 12),
              _buildGenresCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGenresCard() {
    return Card(
      color: Colors.black.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.movie, color: Colors.white),
                SizedBox(width: 8),
                Text("Selected Genres",
                    style: TextStyle(color: Colors.white70, fontSize: 14)),
              ],
            ),
            const SizedBox(height: 8),
            ...genres.map((genre) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text("- $genre",
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16)),
                )),
          ],
        ),
      ),
    );
  }
}
