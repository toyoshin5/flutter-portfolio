import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/profile.dart';

part 'profile_provider.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  Profile build() {
    return const Profile(
      name: "豊田真吾",
      imageUrl: "https://avatars.githubusercontent.com/u/43494392?v=4",
      position: "Passionate about iOS development",
      introduction: "ここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキストここにテキスト",
      activities: [
        Activity(title: "Activity 1", description: "Description of activity 1"),
        Activity(title: "Activity 2", description: "Description of activity 2"),
      ],
    );
  }

  // void setProfile(Profile profile) {
  //   state = profile;
  // }
}
