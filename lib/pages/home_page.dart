import 'package:flutter/material.dart';
import 'package:flutter_portfolio/providers/profile_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileNotifierProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              profile.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              profile.position,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            Text(
              profile.introduction,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              "Activities:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ...profile.activities.map((activity) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activity.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    activity.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
