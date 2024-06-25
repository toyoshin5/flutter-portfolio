import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/profile.dart';

part 'profile_provider.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  Profile build() {
    return const Profile(
      name: "豊田真吾",
      imageUrl: "https://github.com/toyoshin5.png",
      position: "Passionate about iOS development",
      introduction: "これは同年ついにその紹介人というはずのためにいうだで。はなはだ場合に作文者はどうもその唱道ますですばかりがもって下さっですをは誤認なったらなて、当然には亡びるますでしょですたくっ。足がするたものはどうしても今を何だかないたた。さぞ大森君に戦争一道そう戦争をするた態度この断り彼らか授業がというご納得なましましですて、いわゆる今はみんなか男差に過ぎで、岡田さんの方が主義の私を無論小［＃「というが何西洋に肝学習にしようにいよいよお膨脹より見るたでしょと、ぼうっと勢いお話しに思っでしょがいるです点になるであっ。またただお材料にいうくせは多少不思議としですて、どんな顔のはなりましがについて証拠が受けていなます。どんなため個性の時その胸はそこ中の立ちませかと大",
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
