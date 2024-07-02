import 'package:flutter_portfolio/widget/budge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class PortfolioModel with _$PortfolioModel {
  const factory PortfolioModel({
    required OverviewModel overview,
    required List<NewsModel> news,
    required List<ProjectsModel> projects,
    required List<SkillsModel> skills,
    required List<AwardsModel> awards,
    required List<ProfileModel> profile,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) => _$PortfolioModelFromJson(json);
}

@freezed
class OverviewModel with _$OverviewModel {
  const factory OverviewModel({
    required String name,
    required String eName,
    required String hello,
    required String birthday,
    required String imageUrl,
    required String position,
    required String introduction,
    required List<LinkModel> links,
  }) = _OverviewModel;

  factory OverviewModel.fromJson(Map<String, dynamic> json) => _$OverviewModelFromJson(json);
}

@freezed
class LinkModel with _$LinkModel {
  const factory LinkModel({
    required String url,
    required String faIconName,
    required String text,
  }) = _LinkModel;

  factory LinkModel.fromJson(Map<String, dynamic> json) => _$LinkModelFromJson(json);
}

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required String date,
    required String text,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) => _$NewsModelFromJson(json);
}

//modelを作っていく

@freezed
class ProjectsModel with _$ProjectsModel {
  const factory ProjectsModel({
    required String title,
    required String date,
    required String description,
    required String imagePath,
    required List<BudgeType> budges,
  }) = _ProjectsModel;

  factory ProjectsModel.fromJson(Map<String, dynamic> json) => _$ProjectsModelFromJson(json);
}

@freezed
class SkillsModel with _$SkillsModel {
  const factory SkillsModel({
    required String language,
    required String languageFull,
    required double level,
  }) = _SkillsModel;

  factory SkillsModel.fromJson(Map<String, dynamic> json) => _$SkillsModelFromJson(json);
}

@freezed
class AwardsModel with _$AwardsModel {
  const factory AwardsModel({
    required String date,
    required String text,
  }) = _AwardsModel;

  factory AwardsModel.fromJson(Map<String, dynamic> json) => _$AwardsModelFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String date,
    required String text,
    required String faIconName,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}