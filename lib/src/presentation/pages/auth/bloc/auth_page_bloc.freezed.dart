// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageEventLoading value) loading,
    required TResult Function(_AuthPageEventLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageEventLoading value)? loading,
    TResult? Function(_AuthPageEventLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageEventLoading value)? loading,
    TResult Function(_AuthPageEventLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageEventCopyWith<$Res> {
  factory $AuthPageEventCopyWith(
          AuthPageEvent value, $Res Function(AuthPageEvent) then) =
      _$AuthPageEventCopyWithImpl<$Res, AuthPageEvent>;
}

/// @nodoc
class _$AuthPageEventCopyWithImpl<$Res, $Val extends AuthPageEvent>
    implements $AuthPageEventCopyWith<$Res> {
  _$AuthPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthPageEventLoadingImplCopyWith<$Res> {
  factory _$$AuthPageEventLoadingImplCopyWith(_$AuthPageEventLoadingImpl value,
          $Res Function(_$AuthPageEventLoadingImpl) then) =
      __$$AuthPageEventLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthPageEventLoadingImplCopyWithImpl<$Res>
    extends _$AuthPageEventCopyWithImpl<$Res, _$AuthPageEventLoadingImpl>
    implements _$$AuthPageEventLoadingImplCopyWith<$Res> {
  __$$AuthPageEventLoadingImplCopyWithImpl(_$AuthPageEventLoadingImpl _value,
      $Res Function(_$AuthPageEventLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthPageEventLoadingImpl implements _AuthPageEventLoading {
  const _$AuthPageEventLoadingImpl();

  @override
  String toString() {
    return 'AuthPageEvent.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageEventLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(_AuthPageEventLoading value) loading,
    required TResult Function(_AuthPageEventLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageEventLoading value)? loading,
    TResult? Function(_AuthPageEventLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageEventLoading value)? loading,
    TResult Function(_AuthPageEventLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthPageEventLoading implements AuthPageEvent {
  const factory _AuthPageEventLoading() = _$AuthPageEventLoadingImpl;
}

/// @nodoc
abstract class _$$AuthPageEventLoadedImplCopyWith<$Res> {
  factory _$$AuthPageEventLoadedImplCopyWith(_$AuthPageEventLoadedImpl value,
          $Res Function(_$AuthPageEventLoadedImpl) then) =
      __$$AuthPageEventLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthPageEventLoadedImplCopyWithImpl<$Res>
    extends _$AuthPageEventCopyWithImpl<$Res, _$AuthPageEventLoadedImpl>
    implements _$$AuthPageEventLoadedImplCopyWith<$Res> {
  __$$AuthPageEventLoadedImplCopyWithImpl(_$AuthPageEventLoadedImpl _value,
      $Res Function(_$AuthPageEventLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthPageEventLoadedImpl implements _AuthPageEventLoaded {
  const _$AuthPageEventLoadedImpl();

  @override
  String toString() {
    return 'AuthPageEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageEventLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageEventLoading value) loading,
    required TResult Function(_AuthPageEventLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageEventLoading value)? loading,
    TResult? Function(_AuthPageEventLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageEventLoading value)? loading,
    TResult Function(_AuthPageEventLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AuthPageEventLoaded implements AuthPageEvent {
  const factory _AuthPageEventLoaded() = _$AuthPageEventLoadedImpl;
}

/// @nodoc
mixin _$AuthPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageStateLoading value) loading,
    required TResult Function(_AuthPageStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateLoading value)? loading,
    TResult? Function(_AuthPageStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateLoading value)? loading,
    TResult Function(_AuthPageStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthPageStateCopyWith<$Res> {
  factory $AuthPageStateCopyWith(
          AuthPageState value, $Res Function(AuthPageState) then) =
      _$AuthPageStateCopyWithImpl<$Res, AuthPageState>;
}

/// @nodoc
class _$AuthPageStateCopyWithImpl<$Res, $Val extends AuthPageState>
    implements $AuthPageStateCopyWith<$Res> {
  _$AuthPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthPageStateLoadingImplCopyWith<$Res> {
  factory _$$AuthPageStateLoadingImplCopyWith(_$AuthPageStateLoadingImpl value,
          $Res Function(_$AuthPageStateLoadingImpl) then) =
      __$$AuthPageStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthPageStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$AuthPageStateLoadingImpl>
    implements _$$AuthPageStateLoadingImplCopyWith<$Res> {
  __$$AuthPageStateLoadingImplCopyWithImpl(_$AuthPageStateLoadingImpl _value,
      $Res Function(_$AuthPageStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthPageStateLoadingImpl implements _AuthPageStateLoading {
  const _$AuthPageStateLoadingImpl();

  @override
  String toString() {
    return 'AuthPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(_AuthPageStateLoading value) loading,
    required TResult Function(_AuthPageStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateLoading value)? loading,
    TResult? Function(_AuthPageStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateLoading value)? loading,
    TResult Function(_AuthPageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthPageStateLoading implements AuthPageState {
  const factory _AuthPageStateLoading() = _$AuthPageStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthPageStateLoadedImplCopyWith<$Res> {
  factory _$$AuthPageStateLoadedImplCopyWith(_$AuthPageStateLoadedImpl value,
          $Res Function(_$AuthPageStateLoadedImpl) then) =
      __$$AuthPageStateLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthPageStateLoadedImplCopyWithImpl<$Res>
    extends _$AuthPageStateCopyWithImpl<$Res, _$AuthPageStateLoadedImpl>
    implements _$$AuthPageStateLoadedImplCopyWith<$Res> {
  __$$AuthPageStateLoadedImplCopyWithImpl(_$AuthPageStateLoadedImpl _value,
      $Res Function(_$AuthPageStateLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthPageStateLoadedImpl implements _AuthPageStateLoaded {
  const _$AuthPageStateLoadedImpl();

  @override
  String toString() {
    return 'AuthPageState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthPageStateLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthPageStateLoading value) loading,
    required TResult Function(_AuthPageStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthPageStateLoading value)? loading,
    TResult? Function(_AuthPageStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthPageStateLoading value)? loading,
    TResult Function(_AuthPageStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AuthPageStateLoaded implements AuthPageState {
  const factory _AuthPageStateLoaded() = _$AuthPageStateLoadedImpl;
}
