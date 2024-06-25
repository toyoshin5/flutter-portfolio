import 'package:riverpod/riverpod.dart';
import '../widgets/profile_card.dart';

final profileProvider = FutureProvider<Profile>((ref) async {
  // サンプルデータを使用します
  await Future.delayed(Duration(seconds: 2)); // データ取得をシミュレーション
  return Profile(
    name: 'Toyoda Shingo',
    bio: '豊田真吾',
    imageUrl: 'https://via.placeholder.com/150',
  );
});
