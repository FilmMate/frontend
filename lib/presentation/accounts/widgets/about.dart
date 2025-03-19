import 'package:flutter/material.dart';
import 'package:film_mate/core/colors.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSelectedBackgroundColor,
        foregroundColor: kWhite,
        title: const Text("About FilmMate"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionHeader("What is FilmMate?", LucideIcons.film),
              _buildText(
                  "Film Mate is a personalized platform for discovering your next favorite movies and TV shows. Embark on a journey of exploring personalized recommendations, trending releases, and exciting trailers—all within a secure and user-friendly platform."),
              _buildSectionHeader("Project Background", LucideIcons.bookOpen),
              _buildText(
                  "Initially conceived as a mini-project for the sixth-semester curriculum under KTU, Film Mate was later expanded into a comprehensive main project."),
              _buildSectionHeader("Tech Stack", LucideIcons.code),
              _buildText(
                  "Flutter, Flask, Dart, Python, Firebase, React, Git, GitHub, PythonAnywhere.com by Anaconda."),
              _buildSectionHeader("Project Guide", LucideIcons.userCheck),
              _buildText("Mrs. Salini Dev P. V"),
              _buildSectionHeader("Team Members", LucideIcons.users),
              _buildText("Akshay Shine Krishna - VJC21IT006"),
              _buildText("Joshua Johny - VJC21IT038"),
              _buildText("Nikhil S - VJC21IT049"),
              _buildText("Niya Brijith James - VJC21IT050"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText(String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        content,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 14,
          height: 1.5,
        ),
      ),
    );
  }
}
