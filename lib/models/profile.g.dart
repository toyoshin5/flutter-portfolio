// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioModelImpl _$$PortfolioModelImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioModelImpl(
      overview:
          OverviewModel.fromJson(json['overview'] as Map<String, dynamic>),
      news: (json['news'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      projects: (json['projects'] as List<dynamic>)
          .map((e) => ProjectsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => SkillsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      awards: (json['awards'] as List<dynamic>)
          .map((e) => AwardsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      profile: (json['profile'] as List<dynamic>)
          .map((e) => ProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PortfolioModelImplToJson(
        _$PortfolioModelImpl instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'news': instance.news,
      'projects': instance.projects,
      'skills': instance.skills,
      'awards': instance.awards,
      'profile': instance.profile,
    };

_$OverviewModelImpl _$$OverviewModelImplFromJson(Map<String, dynamic> json) =>
    _$OverviewModelImpl(
      name: json['name'] as String,
      eName: json['eName'] as String,
      hello: json['hello'] as String,
      birthday: json['birthday'] as String,
      imageUrl: json['imageUrl'] as String,
      position: json['position'] as String,
      introduction: json['introduction'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => LinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OverviewModelImplToJson(_$OverviewModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'eName': instance.eName,
      'hello': instance.hello,
      'birthday': instance.birthday,
      'imageUrl': instance.imageUrl,
      'position': instance.position,
      'introduction': instance.introduction,
      'links': instance.links,
    };

_$LinkModelImpl _$$LinkModelImplFromJson(Map<String, dynamic> json) =>
    _$LinkModelImpl(
      url: json['url'] as String,
      faIconName: json['faIconName'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$LinkModelImplToJson(_$LinkModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'faIconName': instance.faIconName,
      'text': instance.text,
    };

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      date: json['date'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'text': instance.text,
    };

_$ProjectsModelImpl _$$ProjectsModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectsModelImpl(
      title: json['title'] as String,
      date: json['date'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      budges: (json['budges'] as List<dynamic>)
          .map((e) => $enumDecode(_$BudgeTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ProjectsModelImplToJson(_$ProjectsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'budges': instance.budges.map((e) => _$BudgeTypeEnumMap[e]!).toList(),
    };

const _$BudgeTypeEnumMap = {
  BudgeType.flutter: 'flutter',
  BudgeType.swift: 'swift',
  BudgeType.kotlin: 'kotlin',
  BudgeType.hackerson: 'hackerson',
  BudgeType.personal: 'personal',
  BudgeType.team: 'team',
};

_$SkillsModelImpl _$$SkillsModelImplFromJson(Map<String, dynamic> json) =>
    _$SkillsModelImpl(
      language: json['language'] as String,
      languageFull: json['languageFull'] as String,
      level: (json['level'] as num).toDouble(),
    );

Map<String, dynamic> _$$SkillsModelImplToJson(_$SkillsModelImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'languageFull': instance.languageFull,
      'level': instance.level,
    };

_$AwardsModelImpl _$$AwardsModelImplFromJson(Map<String, dynamic> json) =>
    _$AwardsModelImpl(
      date: json['date'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$AwardsModelImplToJson(_$AwardsModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'text': instance.text,
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      date: json['date'] as String,
      text: json['text'] as String,
      faIconName: json['faIconName'] as String,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'text': instance.text,
      'faIconName': instance.faIconName,
    };
