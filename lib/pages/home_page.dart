import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/profile_card.dart';
import '../providers/profile_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: profile.when(
            data: (profile) => ProfileArea(profile: profile),
            loading: () => Container(),
            error: (err, stack) => Text('Error: $err'),
          ),
        ),
      ),
    );
  }
}

class ProfileArea extends StatelessWidget {
  final Profile profile;
  const ProfileArea({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < 10; i++)
          ProfileCard(
            profile: profile,
          ),
      ],
    );
  }
}