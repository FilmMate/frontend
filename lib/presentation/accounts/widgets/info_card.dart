import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String value, label;
  final IconData icon;
  const InfoCard(
      {super.key,
      required this.value,
      required this.label,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(label,
            style: const TextStyle(color: Colors.white70, fontSize: 14)),
        subtitle: Text(value,
            style: const TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
