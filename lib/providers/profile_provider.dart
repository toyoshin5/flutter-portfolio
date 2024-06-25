import 'package:riverpod/riverpod.dart';
import '../widgets/profile_card.dart';

final profileProvider = FutureProvider<Profile>((ref) async {
  return Profile(
    name: 'Toyoda Shingo',
    bio: '豊田真吾',
    imageUrl: 'https://via.placeholder.com/150',
  );
});
