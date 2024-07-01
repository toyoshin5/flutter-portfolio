// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) {
  return _PortfolioModel.fromJson(json);
}

/// @nodoc
mixin _$PortfolioModel {
  OverviewModel get overview => throw _privateConstructorUsedError;
  List<NewsModel> get news => throw _privateConstructorUsedError;
  List<ProjectsModel> get projects => throw _privateConstructorUsedError;
  List<SkillsModel> get skills => throw _privateConstructorUsedError;
  List<AwardsModel> get awards => throw _privateConstructorUsedError;
  List<ProfileModel> get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
          PortfolioModel value, $Res Function(PortfolioModel) then) =
      _$PortfolioModelCopyWithImpl<$Res, PortfolioModel>;
  @useResult
  $Res call(
      {OverviewModel overview,
      List<NewsModel> news,
      List<ProjectsModel> projects,
      List<SkillsModel> skills,
      List<AwardsModel> awards,
      List<ProfileModel> profile});

  $OverviewModelCopyWith<$Res> get overview;
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res, $Val extends PortfolioModel>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? news = null,
    Object? projects = null,
    Object? skills = null,
    Object? awards = null,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as OverviewModel,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectsModel>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillsModel>,
      awards: null == awards
          ? _value.awards
          : awards // ignore: cast_nullable_to_non_nullable
              as List<AwardsModel>,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OverviewModelCopyWith<$Res> get overview {
    return $OverviewModelCopyWith<$Res>(_value.overview, (value) {
      return _then(_value.copyWith(overview: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PortfolioModelImplCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$$PortfolioModelImplCopyWith(_$PortfolioModelImpl value,
          $Res Function(_$PortfolioModelImpl) then) =
      __$$PortfolioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OverviewModel overview,
      List<NewsModel> news,
      List<ProjectsModel> projects,
      List<SkillsModel> skills,
      List<AwardsModel> awards,
      List<ProfileModel> profile});

  @override
  $OverviewModelCopyWith<$Res> get overview;
}

/// @nodoc
class __$$PortfolioModelImplCopyWithImpl<$Res>
    extends _$PortfolioModelCopyWithImpl<$Res, _$PortfolioModelImpl>
    implements _$$PortfolioModelImplCopyWith<$Res> {
  __$$PortfolioModelImplCopyWithImpl(
      _$PortfolioModelImpl _value, $Res Function(_$PortfolioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? news = null,
    Object? projects = null,
    Object? skills = null,
    Object? awards = null,
    Object? profile = null,
  }) {
    return _then(_$PortfolioModelImpl(
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as OverviewModel,
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectsModel>,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillsModel>,
      awards: null == awards
          ? _value._awards
          : awards // ignore: cast_nullable_to_non_nullable
              as List<AwardsModel>,
      profile: null == profile
          ? _value._profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<ProfileModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioModelImpl implements _PortfolioModel {
  const _$PortfolioModelImpl(
      {required this.overview,
      required final List<NewsModel> news,
      required final List<ProjectsModel> projects,
      required final List<SkillsModel> skills,
      required final List<AwardsModel> awards,
      required final List<ProfileModel> profile})
      : _news = news,
        _projects = projects,
        _skills = skills,
        _awards = awards,
        _profile = profile;

  factory _$PortfolioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioModelImplFromJson(json);

  @override
  final OverviewModel overview;
  final List<NewsModel> _news;
  @override
  List<NewsModel> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  final List<ProjectsModel> _projects;
  @override
  List<ProjectsModel> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  final List<SkillsModel> _skills;
  @override
  List<SkillsModel> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<AwardsModel> _awards;
  @override
  List<AwardsModel> get awards {
    if (_awards is EqualUnmodifiableListView) return _awards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_awards);
  }

  final List<ProfileModel> _profile;
  @override
  List<ProfileModel> get profile {
    if (_profile is EqualUnmodifiableListView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profile);
  }

  @override
  String toString() {
    return 'PortfolioModel(overview: $overview, news: $news, projects: $projects, skills: $skills, awards: $awards, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioModelImpl &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._awards, _awards) &&
            const DeepCollectionEquality().equals(other._profile, _profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overview,
      const DeepCollectionEquality().hash(_news),
      const DeepCollectionEquality().hash(_projects),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_awards),
      const DeepCollectionEquality().hash(_profile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      __$$PortfolioModelImplCopyWithImpl<_$PortfolioModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioModelImplToJson(
      this,
    );
  }
}

abstract class _PortfolioModel implements PortfolioModel {
  const factory _PortfolioModel(
      {required final OverviewModel overview,
      required final List<NewsModel> news,
      required final List<ProjectsModel> projects,
      required final List<SkillsModel> skills,
      required final List<AwardsModel> awards,
      required final List<ProfileModel> profile}) = _$PortfolioModelImpl;

  factory _PortfolioModel.fromJson(Map<String, dynamic> json) =
      _$PortfolioModelImpl.fromJson;

  @override
  OverviewModel get overview;
  @override
  List<NewsModel> get news;
  @override
  List<ProjectsModel> get projects;
  @override
  List<SkillsModel> get skills;
  @override
  List<AwardsModel> get awards;
  @override
  List<ProfileModel> get profile;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OverviewModel _$OverviewModelFromJson(Map<String, dynamic> json) {
  return _OverviewModel.fromJson(json);
}

/// @nodoc
mixin _$OverviewModel {
  String get name => throw _privateConstructorUsedError;
  String get eName => throw _privateConstructorUsedError;
  String get birthday => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get introduction => throw _privateConstructorUsedError;
  List<LinkModel> get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OverviewModelCopyWith<OverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewModelCopyWith<$Res> {
  factory $OverviewModelCopyWith(
          OverviewModel value, $Res Function(OverviewModel) then) =
      _$OverviewModelCopyWithImpl<$Res, OverviewModel>;
  @useResult
  $Res call(
      {String name,
      String eName,
      String birthday,
      String imageUrl,
      String position,
      String introduction,
      List<LinkModel> links});
}

/// @nodoc
class _$OverviewModelCopyWithImpl<$Res, $Val extends OverviewModel>
    implements $OverviewModelCopyWith<$Res> {
  _$OverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? eName = null,
    Object? birthday = null,
    Object? imageUrl = null,
    Object? position = null,
    Object? introduction = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eName: null == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverviewModelImplCopyWith<$Res>
    implements $OverviewModelCopyWith<$Res> {
  factory _$$OverviewModelImplCopyWith(
          _$OverviewModelImpl value, $Res Function(_$OverviewModelImpl) then) =
      __$$OverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String eName,
      String birthday,
      String imageUrl,
      String position,
      String introduction,
      List<LinkModel> links});
}

/// @nodoc
class __$$OverviewModelImplCopyWithImpl<$Res>
    extends _$OverviewModelCopyWithImpl<$Res, _$OverviewModelImpl>
    implements _$$OverviewModelImplCopyWith<$Res> {
  __$$OverviewModelImplCopyWithImpl(
      _$OverviewModelImpl _value, $Res Function(_$OverviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? eName = null,
    Object? birthday = null,
    Object? imageUrl = null,
    Object? position = null,
    Object? introduction = null,
    Object? links = null,
  }) {
    return _then(_$OverviewModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      eName: null == eName
          ? _value.eName
          : eName // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _value.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<LinkModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OverviewModelImpl implements _OverviewModel {
  const _$OverviewModelImpl(
      {required this.name,
      required this.eName,
      required this.birthday,
      required this.imageUrl,
      required this.position,
      required this.introduction,
      required final List<LinkModel> links})
      : _links = links;

  factory _$OverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewModelImplFromJson(json);

  @override
  final String name;
  @override
  final String eName;
  @override
  final String birthday;
  @override
  final String imageUrl;
  @override
  final String position;
  @override
  final String introduction;
  final List<LinkModel> _links;
  @override
  List<LinkModel> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  String toString() {
    return 'OverviewModel(name: $name, eName: $eName, birthday: $birthday, imageUrl: $imageUrl, position: $position, introduction: $introduction, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.eName, eName) || other.eName == eName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, eName, birthday, imageUrl,
      position, introduction, const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewModelImplCopyWith<_$OverviewModelImpl> get copyWith =>
      __$$OverviewModelImplCopyWithImpl<_$OverviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewModelImplToJson(
      this,
    );
  }
}

abstract class _OverviewModel implements OverviewModel {
  const factory _OverviewModel(
      {required final String name,
      required final String eName,
      required final String birthday,
      required final String imageUrl,
      required final String position,
      required final String introduction,
      required final List<LinkModel> links}) = _$OverviewModelImpl;

  factory _OverviewModel.fromJson(Map<String, dynamic> json) =
      _$OverviewModelImpl.fromJson;

  @override
  String get name;
  @override
  String get eName;
  @override
  String get birthday;
  @override
  String get imageUrl;
  @override
  String get position;
  @override
  String get introduction;
  @override
  List<LinkModel> get links;
  @override
  @JsonKey(ignore: true)
  _$$OverviewModelImplCopyWith<_$OverviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkModel _$LinkModelFromJson(Map<String, dynamic> json) {
  return _LinkModel.fromJson(json);
}

/// @nodoc
mixin _$LinkModel {
  String get url => throw _privateConstructorUsedError;
  String get faIconName => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkModelCopyWith<LinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkModelCopyWith<$Res> {
  factory $LinkModelCopyWith(LinkModel value, $Res Function(LinkModel) then) =
      _$LinkModelCopyWithImpl<$Res, LinkModel>;
  @useResult
  $Res call({String url, String faIconName, String text});
}

/// @nodoc
class _$LinkModelCopyWithImpl<$Res, $Val extends LinkModel>
    implements $LinkModelCopyWith<$Res> {
  _$LinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? faIconName = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      faIconName: null == faIconName
          ? _value.faIconName
          : faIconName // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkModelImplCopyWith<$Res>
    implements $LinkModelCopyWith<$Res> {
  factory _$$LinkModelImplCopyWith(
          _$LinkModelImpl value, $Res Function(_$LinkModelImpl) then) =
      __$$LinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String faIconName, String text});
}

/// @nodoc
class __$$LinkModelImplCopyWithImpl<$Res>
    extends _$LinkModelCopyWithImpl<$Res, _$LinkModelImpl>
    implements _$$LinkModelImplCopyWith<$Res> {
  __$$LinkModelImplCopyWithImpl(
      _$LinkModelImpl _value, $Res Function(_$LinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? faIconName = null,
    Object? text = null,
  }) {
    return _then(_$LinkModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      faIconName: null == faIconName
          ? _value.faIconName
          : faIconName // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkModelImpl implements _LinkModel {
  const _$LinkModelImpl(
      {required this.url, required this.faIconName, required this.text});

  factory _$LinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkModelImplFromJson(json);

  @override
  final String url;
  @override
  final String faIconName;
  @override
  final String text;

  @override
  String toString() {
    return 'LinkModel(url: $url, faIconName: $faIconName, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.faIconName, faIconName) ||
                other.faIconName == faIconName) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, faIconName, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkModelImplCopyWith<_$LinkModelImpl> get copyWith =>
      __$$LinkModelImplCopyWithImpl<_$LinkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkModelImplToJson(
      this,
    );
  }
}

abstract class _LinkModel implements LinkModel {
  const factory _LinkModel(
      {required final String url,
      required final String faIconName,
      required final String text}) = _$LinkModelImpl;

  factory _LinkModel.fromJson(Map<String, dynamic> json) =
      _$LinkModelImpl.fromJson;

  @override
  String get url;
  @override
  String get faIconName;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$LinkModelImplCopyWith<_$LinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  String get date => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call({String date, String text});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String text});
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? text = null,
  }) {
    return _then(_$NewsModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsModelImpl implements _NewsModel {
  const _$NewsModelImpl({required this.date, required this.text});

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

  @override
  final String date;
  @override
  final String text;

  @override
  String toString() {
    return 'NewsModel(date: $date, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel(
      {required final String date,
      required final String text}) = _$NewsModelImpl;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

  @override
  String get date;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectsModel _$ProjectsModelFromJson(Map<String, dynamic> json) {
  return _ProjectsModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectsModel {
  String get title => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<BudgeType> get budges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectsModelCopyWith<ProjectsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsModelCopyWith<$Res> {
  factory $ProjectsModelCopyWith(
          ProjectsModel value, $Res Function(ProjectsModel) then) =
      _$ProjectsModelCopyWithImpl<$Res, ProjectsModel>;
  @useResult
  $Res call(
      {String title,
      String date,
      String description,
      String imageUrl,
      List<BudgeType> budges});
}

/// @nodoc
class _$ProjectsModelCopyWithImpl<$Res, $Val extends ProjectsModel>
    implements $ProjectsModelCopyWith<$Res> {
  _$ProjectsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? budges = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      budges: null == budges
          ? _value.budges
          : budges // ignore: cast_nullable_to_non_nullable
              as List<BudgeType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectsModelImplCopyWith<$Res>
    implements $ProjectsModelCopyWith<$Res> {
  factory _$$ProjectsModelImplCopyWith(
          _$ProjectsModelImpl value, $Res Function(_$ProjectsModelImpl) then) =
      __$$ProjectsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String date,
      String description,
      String imageUrl,
      List<BudgeType> budges});
}

/// @nodoc
class __$$ProjectsModelImplCopyWithImpl<$Res>
    extends _$ProjectsModelCopyWithImpl<$Res, _$ProjectsModelImpl>
    implements _$$ProjectsModelImplCopyWith<$Res> {
  __$$ProjectsModelImplCopyWithImpl(
      _$ProjectsModelImpl _value, $Res Function(_$ProjectsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? budges = null,
  }) {
    return _then(_$ProjectsModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      budges: null == budges
          ? _value._budges
          : budges // ignore: cast_nullable_to_non_nullable
              as List<BudgeType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectsModelImpl implements _ProjectsModel {
  const _$ProjectsModelImpl(
      {required this.title,
      required this.date,
      required this.description,
      required this.imageUrl,
      required final List<BudgeType> budges})
      : _budges = budges;

  factory _$ProjectsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectsModelImplFromJson(json);

  @override
  final String title;
  @override
  final String date;
  @override
  final String description;
  @override
  final String imageUrl;
  final List<BudgeType> _budges;
  @override
  List<BudgeType> get budges {
    if (_budges is EqualUnmodifiableListView) return _budges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_budges);
  }

  @override
  String toString() {
    return 'ProjectsModel(title: $title, date: $date, description: $description, imageUrl: $imageUrl, budges: $budges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._budges, _budges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, date, description,
      imageUrl, const DeepCollectionEquality().hash(_budges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsModelImplCopyWith<_$ProjectsModelImpl> get copyWith =>
      __$$ProjectsModelImplCopyWithImpl<_$ProjectsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectsModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectsModel implements ProjectsModel {
  const factory _ProjectsModel(
      {required final String title,
      required final String date,
      required final String description,
      required final String imageUrl,
      required final List<BudgeType> budges}) = _$ProjectsModelImpl;

  factory _ProjectsModel.fromJson(Map<String, dynamic> json) =
      _$ProjectsModelImpl.fromJson;

  @override
  String get title;
  @override
  String get date;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  List<BudgeType> get budges;
  @override
  @JsonKey(ignore: true)
  _$$ProjectsModelImplCopyWith<_$ProjectsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SkillsModel _$SkillsModelFromJson(Map<String, dynamic> json) {
  return _SkillsModel.fromJson(json);
}

/// @nodoc
mixin _$SkillsModel {
  String get language => throw _privateConstructorUsedError;
  String get languageFull => throw _privateConstructorUsedError;
  double get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillsModelCopyWith<SkillsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillsModelCopyWith<$Res> {
  factory $SkillsModelCopyWith(
          SkillsModel value, $Res Function(SkillsModel) then) =
      _$SkillsModelCopyWithImpl<$Res, SkillsModel>;
  @useResult
  $Res call({String language, String languageFull, double level});
}

/// @nodoc
class _$SkillsModelCopyWithImpl<$Res, $Val extends SkillsModel>
    implements $SkillsModelCopyWith<$Res> {
  _$SkillsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? languageFull = null,
    Object? level = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      languageFull: null == languageFull
          ? _value.languageFull
          : languageFull // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkillsModelImplCopyWith<$Res>
    implements $SkillsModelCopyWith<$Res> {
  factory _$$SkillsModelImplCopyWith(
          _$SkillsModelImpl value, $Res Function(_$SkillsModelImpl) then) =
      __$$SkillsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language, String languageFull, double level});
}

/// @nodoc
class __$$SkillsModelImplCopyWithImpl<$Res>
    extends _$SkillsModelCopyWithImpl<$Res, _$SkillsModelImpl>
    implements _$$SkillsModelImplCopyWith<$Res> {
  __$$SkillsModelImplCopyWithImpl(
      _$SkillsModelImpl _value, $Res Function(_$SkillsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? languageFull = null,
    Object? level = null,
  }) {
    return _then(_$SkillsModelImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      languageFull: null == languageFull
          ? _value.languageFull
          : languageFull // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillsModelImpl implements _SkillsModel {
  const _$SkillsModelImpl(
      {required this.language,
      required this.languageFull,
      required this.level});

  factory _$SkillsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillsModelImplFromJson(json);

  @override
  final String language;
  @override
  final String languageFull;
  @override
  final double level;

  @override
  String toString() {
    return 'SkillsModel(language: $language, languageFull: $languageFull, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillsModelImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageFull, languageFull) ||
                other.languageFull == languageFull) &&
            (identical(other.level, level) || other.level == level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, languageFull, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillsModelImplCopyWith<_$SkillsModelImpl> get copyWith =>
      __$$SkillsModelImplCopyWithImpl<_$SkillsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillsModelImplToJson(
      this,
    );
  }
}

abstract class _SkillsModel implements SkillsModel {
  const factory _SkillsModel(
      {required final String language,
      required final String languageFull,
      required final double level}) = _$SkillsModelImpl;

  factory _SkillsModel.fromJson(Map<String, dynamic> json) =
      _$SkillsModelImpl.fromJson;

  @override
  String get language;
  @override
  String get languageFull;
  @override
  double get level;
  @override
  @JsonKey(ignore: true)
  _$$SkillsModelImplCopyWith<_$SkillsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AwardsModel _$AwardsModelFromJson(Map<String, dynamic> json) {
  return _AwardsModel.fromJson(json);
}

/// @nodoc
mixin _$AwardsModel {
  String get date => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AwardsModelCopyWith<AwardsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AwardsModelCopyWith<$Res> {
  factory $AwardsModelCopyWith(
          AwardsModel value, $Res Function(AwardsModel) then) =
      _$AwardsModelCopyWithImpl<$Res, AwardsModel>;
  @useResult
  $Res call({String date, String text});
}

/// @nodoc
class _$AwardsModelCopyWithImpl<$Res, $Val extends AwardsModel>
    implements $AwardsModelCopyWith<$Res> {
  _$AwardsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AwardsModelImplCopyWith<$Res>
    implements $AwardsModelCopyWith<$Res> {
  factory _$$AwardsModelImplCopyWith(
          _$AwardsModelImpl value, $Res Function(_$AwardsModelImpl) then) =
      __$$AwardsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String text});
}

/// @nodoc
class __$$AwardsModelImplCopyWithImpl<$Res>
    extends _$AwardsModelCopyWithImpl<$Res, _$AwardsModelImpl>
    implements _$$AwardsModelImplCopyWith<$Res> {
  __$$AwardsModelImplCopyWithImpl(
      _$AwardsModelImpl _value, $Res Function(_$AwardsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? text = null,
  }) {
    return _then(_$AwardsModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AwardsModelImpl implements _AwardsModel {
  const _$AwardsModelImpl({required this.date, required this.text});

  factory _$AwardsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AwardsModelImplFromJson(json);

  @override
  final String date;
  @override
  final String text;

  @override
  String toString() {
    return 'AwardsModel(date: $date, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AwardsModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AwardsModelImplCopyWith<_$AwardsModelImpl> get copyWith =>
      __$$AwardsModelImplCopyWithImpl<_$AwardsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AwardsModelImplToJson(
      this,
    );
  }
}

abstract class _AwardsModel implements AwardsModel {
  const factory _AwardsModel(
      {required final String date,
      required final String text}) = _$AwardsModelImpl;

  factory _AwardsModel.fromJson(Map<String, dynamic> json) =
      _$AwardsModelImpl.fromJson;

  @override
  String get date;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$AwardsModelImplCopyWith<_$AwardsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String get date => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get faIconName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({String date, String text, String faIconName});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? text = null,
    Object? faIconName = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      faIconName: null == faIconName
          ? _value.faIconName
          : faIconName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String text, String faIconName});
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? text = null,
    Object? faIconName = null,
  }) {
    return _then(_$ProfileModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      faIconName: null == faIconName
          ? _value.faIconName
          : faIconName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {required this.date, required this.text, required this.faIconName});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String date;
  @override
  final String text;
  @override
  final String faIconName;

  @override
  String toString() {
    return 'ProfileModel(date: $date, text: $text, faIconName: $faIconName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.faIconName, faIconName) ||
                other.faIconName == faIconName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, text, faIconName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required final String date,
      required final String text,
      required final String faIconName}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  String get date;
  @override
  String get text;
  @override
  String get faIconName;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
