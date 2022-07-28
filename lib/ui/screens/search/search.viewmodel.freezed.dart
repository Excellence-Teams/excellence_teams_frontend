// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> profiles) successProfiles,
    required TResult Function(List<Project> projects) successProjects,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessProfiles value) successProfiles,
    required TResult Function(_SuccessProjects value) successProjects,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> profiles) successProfiles,
    required TResult Function(List<Project> projects) successProjects,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessProfiles value) successProfiles,
    required TResult Function(_SuccessProjects value) successProjects,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessProfilesCopyWith<$Res> {
  factory _$$_SuccessProfilesCopyWith(
          _$_SuccessProfiles value, $Res Function(_$_SuccessProfiles) then) =
      __$$_SuccessProfilesCopyWithImpl<$Res>;
  $Res call({List<User> profiles});
}

/// @nodoc
class __$$_SuccessProfilesCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SuccessProfilesCopyWith<$Res> {
  __$$_SuccessProfilesCopyWithImpl(
      _$_SuccessProfiles _value, $Res Function(_$_SuccessProfiles) _then)
      : super(_value, (v) => _then(v as _$_SuccessProfiles));

  @override
  _$_SuccessProfiles get _value => super._value as _$_SuccessProfiles;

  @override
  $Res call({
    Object? profiles = freezed,
  }) {
    return _then(_$_SuccessProfiles(
      profiles: profiles == freezed
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_SuccessProfiles implements _SuccessProfiles {
  const _$_SuccessProfiles({required final List<User> profiles})
      : _profiles = profiles;

  final List<User> _profiles;
  @override
  List<User> get profiles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  String toString() {
    return 'SearchState.successProfiles(profiles: $profiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessProfiles &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessProfilesCopyWith<_$_SuccessProfiles> get copyWith =>
      __$$_SuccessProfilesCopyWithImpl<_$_SuccessProfiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> profiles) successProfiles,
    required TResult Function(List<Project> projects) successProjects,
    required TResult Function() error,
  }) {
    return successProfiles(profiles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
  }) {
    return successProfiles?.call(profiles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successProfiles != null) {
      return successProfiles(profiles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessProfiles value) successProfiles,
    required TResult Function(_SuccessProjects value) successProjects,
    required TResult Function(_Error value) error,
  }) {
    return successProfiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
  }) {
    return successProfiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successProfiles != null) {
      return successProfiles(this);
    }
    return orElse();
  }
}

abstract class _SuccessProfiles implements SearchState {
  const factory _SuccessProfiles({required final List<User> profiles}) =
      _$_SuccessProfiles;

  List<User> get profiles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessProfilesCopyWith<_$_SuccessProfiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessProjectsCopyWith<$Res> {
  factory _$$_SuccessProjectsCopyWith(
          _$_SuccessProjects value, $Res Function(_$_SuccessProjects) then) =
      __$$_SuccessProjectsCopyWithImpl<$Res>;
  $Res call({List<Project> projects});
}

/// @nodoc
class __$$_SuccessProjectsCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SuccessProjectsCopyWith<$Res> {
  __$$_SuccessProjectsCopyWithImpl(
      _$_SuccessProjects _value, $Res Function(_$_SuccessProjects) _then)
      : super(_value, (v) => _then(v as _$_SuccessProjects));

  @override
  _$_SuccessProjects get _value => super._value as _$_SuccessProjects;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_$_SuccessProjects(
      projects: projects == freezed
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
    ));
  }
}

/// @nodoc

class _$_SuccessProjects implements _SuccessProjects {
  const _$_SuccessProjects({required final List<Project> projects})
      : _projects = projects;

  final List<Project> _projects;
  @override
  List<Project> get projects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'SearchState.successProjects(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessProjects &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessProjectsCopyWith<_$_SuccessProjects> get copyWith =>
      __$$_SuccessProjectsCopyWithImpl<_$_SuccessProjects>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> profiles) successProfiles,
    required TResult Function(List<Project> projects) successProjects,
    required TResult Function() error,
  }) {
    return successProjects(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
  }) {
    return successProjects?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successProjects != null) {
      return successProjects(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessProfiles value) successProfiles,
    required TResult Function(_SuccessProjects value) successProjects,
    required TResult Function(_Error value) error,
  }) {
    return successProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
  }) {
    return successProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (successProjects != null) {
      return successProjects(this);
    }
    return orElse();
  }
}

abstract class _SuccessProjects implements SearchState {
  const factory _SuccessProjects({required final List<Project> projects}) =
      _$_SuccessProjects;

  List<Project> get projects => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SuccessProjectsCopyWith<_$_SuccessProjects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'SearchState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<User> profiles) successProfiles,
    required TResult Function(List<Project> projects) successProjects,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<User> profiles)? successProfiles,
    TResult Function(List<Project> projects)? successProjects,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessProfiles value) successProfiles,
    required TResult Function(_SuccessProjects value) successProjects,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessProfiles value)? successProfiles,
    TResult Function(_SuccessProjects value)? successProjects,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchState {
  const factory _Error() = _$_Error;
}
