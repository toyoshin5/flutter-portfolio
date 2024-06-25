import 'package:flutter/material.dart';

class Profile {
  final String name;
  final String bio;
  final String imageUrl;

  Profile({required this.name, required this.bio, required this.imageUrl});
}

class ProfileCard extends StatelessWidget {
  final Profile profile;

  ProfileCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(profile.imageUrl),
              radius: 50,
            ),
            SizedBox(height: 16),
            SelectableText(
              profile.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SelectableText(profile.bio),
          ],
        ),
      ),
    );
  }
}
