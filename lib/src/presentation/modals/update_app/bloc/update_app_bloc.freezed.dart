// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateAppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedEvent value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableEvent value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableEvent value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedEvent value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableEvent value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedEvent value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableEvent value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult Function(_UpdateAppUpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppEventCopyWith<$Res> {
  factory $UpdateAppEventCopyWith(
          UpdateAppEvent value, $Res Function(UpdateAppEvent) then) =
      _$UpdateAppEventCopyWithImpl<$Res, UpdateAppEvent>;
}

/// @nodoc
class _$UpdateAppEventCopyWithImpl<$Res, $Val extends UpdateAppEvent>
    implements $UpdateAppEventCopyWith<$Res> {
  _$UpdateAppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateAppLoadedEventImplCopyWith<$Res> {
  factory _$$UpdateAppLoadedEventImplCopyWith(_$UpdateAppLoadedEventImpl value,
          $Res Function(_$UpdateAppLoadedEventImpl) then) =
      __$$UpdateAppLoadedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateAppLoadedEventImplCopyWithImpl<$Res>
    extends _$UpdateAppEventCopyWithImpl<$Res, _$UpdateAppLoadedEventImpl>
    implements _$$UpdateAppLoadedEventImplCopyWith<$Res> {
  __$$UpdateAppLoadedEventImplCopyWithImpl(_$UpdateAppLoadedEventImpl _value,
      $Res Function(_$UpdateAppLoadedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateAppLoadedEventImpl implements _UpdateAppLoadedEvent {
  const _$UpdateAppLoadedEventImpl();

  @override
  String toString() {
    return 'UpdateAppEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppLoadedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
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
    required TResult Function(_UpdateAppLoadedEvent value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableEvent value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableEvent value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateEvent value) update,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedEvent value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableEvent value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateEvent value)? update,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedEvent value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableEvent value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult Function(_UpdateAppUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppLoadedEvent implements UpdateAppEvent {
  const factory _UpdateAppLoadedEvent() = _$UpdateAppLoadedEventImpl;
}

/// @nodoc
abstract class _$$UpdateAppNoUpdateAvailableEventImplCopyWith<$Res> {
  factory _$$UpdateAppNoUpdateAvailableEventImplCopyWith(
          _$UpdateAppNoUpdateAvailableEventImpl value,
          $Res Function(_$UpdateAppNoUpdateAvailableEventImpl) then) =
      __$$UpdateAppNoUpdateAvailableEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateAppNoUpdateAvailableEventImplCopyWithImpl<$Res>
    extends _$UpdateAppEventCopyWithImpl<$Res,
        _$UpdateAppNoUpdateAvailableEventImpl>
    implements _$$UpdateAppNoUpdateAvailableEventImplCopyWith<$Res> {
  __$$UpdateAppNoUpdateAvailableEventImplCopyWithImpl(
      _$UpdateAppNoUpdateAvailableEventImpl _value,
      $Res Function(_$UpdateAppNoUpdateAvailableEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateAppNoUpdateAvailableEventImpl
    implements _UpdateAppNoUpdateAvailableEvent {
  const _$UpdateAppNoUpdateAvailableEventImpl();

  @override
  String toString() {
    return 'UpdateAppEvent.noUpdateAvailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppNoUpdateAvailableEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return noUpdateAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return noUpdateAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) {
    if (noUpdateAvailable != null) {
      return noUpdateAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedEvent value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableEvent value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableEvent value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateEvent value) update,
  }) {
    return noUpdateAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedEvent value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableEvent value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateEvent value)? update,
  }) {
    return noUpdateAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedEvent value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableEvent value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult Function(_UpdateAppUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (noUpdateAvailable != null) {
      return noUpdateAvailable(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppNoUpdateAvailableEvent implements UpdateAppEvent {
  const factory _UpdateAppNoUpdateAvailableEvent() =
      _$UpdateAppNoUpdateAvailableEventImpl;
}

/// @nodoc
abstract class _$$UpdateAppUpdateAvailableEventImplCopyWith<$Res> {
  factory _$$UpdateAppUpdateAvailableEventImplCopyWith(
          _$UpdateAppUpdateAvailableEventImpl value,
          $Res Function(_$UpdateAppUpdateAvailableEventImpl) then) =
      __$$UpdateAppUpdateAvailableEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Build? accessBuild});
}

/// @nodoc
class __$$UpdateAppUpdateAvailableEventImplCopyWithImpl<$Res>
    extends _$UpdateAppEventCopyWithImpl<$Res,
        _$UpdateAppUpdateAvailableEventImpl>
    implements _$$UpdateAppUpdateAvailableEventImplCopyWith<$Res> {
  __$$UpdateAppUpdateAvailableEventImplCopyWithImpl(
      _$UpdateAppUpdateAvailableEventImpl _value,
      $Res Function(_$UpdateAppUpdateAvailableEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessBuild = freezed,
  }) {
    return _then(_$UpdateAppUpdateAvailableEventImpl(
      accessBuild: freezed == accessBuild
          ? _value.accessBuild
          : accessBuild // ignore: cast_nullable_to_non_nullable
              as Build?,
    ));
  }
}

/// @nodoc

class _$UpdateAppUpdateAvailableEventImpl
    implements _UpdateAppUpdateAvailableEvent {
  const _$UpdateAppUpdateAvailableEventImpl({required this.accessBuild});

  @override
  final Build? accessBuild;

  @override
  String toString() {
    return 'UpdateAppEvent.updateAvailable(accessBuild: $accessBuild)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppUpdateAvailableEventImpl &&
            (identical(other.accessBuild, accessBuild) ||
                other.accessBuild == accessBuild));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessBuild);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppUpdateAvailableEventImplCopyWith<
          _$UpdateAppUpdateAvailableEventImpl>
      get copyWith => __$$UpdateAppUpdateAvailableEventImplCopyWithImpl<
          _$UpdateAppUpdateAvailableEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return updateAvailable(accessBuild);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return updateAvailable?.call(accessBuild);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(accessBuild);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedEvent value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableEvent value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableEvent value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateEvent value) update,
  }) {
    return updateAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedEvent value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableEvent value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateEvent value)? update,
  }) {
    return updateAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedEvent value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableEvent value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult Function(_UpdateAppUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppUpdateAvailableEvent implements UpdateAppEvent {
  const factory _UpdateAppUpdateAvailableEvent(
          {required final Build? accessBuild}) =
      _$UpdateAppUpdateAvailableEventImpl;

  Build? get accessBuild;
  @JsonKey(ignore: true)
  _$$UpdateAppUpdateAvailableEventImplCopyWith<
          _$UpdateAppUpdateAvailableEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAppUpdateEventImplCopyWith<$Res> {
  factory _$$UpdateAppUpdateEventImplCopyWith(_$UpdateAppUpdateEventImpl value,
          $Res Function(_$UpdateAppUpdateEventImpl) then) =
      __$$UpdateAppUpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Build? accessBuild, ProgressDownloadUpdate progress});
}

/// @nodoc
class __$$UpdateAppUpdateEventImplCopyWithImpl<$Res>
    extends _$UpdateAppEventCopyWithImpl<$Res, _$UpdateAppUpdateEventImpl>
    implements _$$UpdateAppUpdateEventImplCopyWith<$Res> {
  __$$UpdateAppUpdateEventImplCopyWithImpl(_$UpdateAppUpdateEventImpl _value,
      $Res Function(_$UpdateAppUpdateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessBuild = freezed,
    Object? progress = null,
  }) {
    return _then(_$UpdateAppUpdateEventImpl(
      accessBuild: freezed == accessBuild
          ? _value.accessBuild
          : accessBuild // ignore: cast_nullable_to_non_nullable
              as Build?,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as ProgressDownloadUpdate,
    ));
  }
}

/// @nodoc

class _$UpdateAppUpdateEventImpl implements _UpdateAppUpdateEvent {
  const _$UpdateAppUpdateEventImpl(
      {required this.accessBuild, required this.progress});

  @override
  final Build? accessBuild;
  @override
  final ProgressDownloadUpdate progress;

  @override
  String toString() {
    return 'UpdateAppEvent.update(accessBuild: $accessBuild, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppUpdateEventImpl &&
            (identical(other.accessBuild, accessBuild) ||
                other.accessBuild == accessBuild) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessBuild, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppUpdateEventImplCopyWith<_$UpdateAppUpdateEventImpl>
      get copyWith =>
          __$$UpdateAppUpdateEventImplCopyWithImpl<_$UpdateAppUpdateEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return update(accessBuild, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return update?.call(accessBuild, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(accessBuild, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedEvent value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableEvent value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableEvent value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedEvent value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableEvent value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedEvent value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableEvent value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableEvent value)? updateAvailable,
    TResult Function(_UpdateAppUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppUpdateEvent implements UpdateAppEvent {
  const factory _UpdateAppUpdateEvent(
          {required final Build? accessBuild,
          required final ProgressDownloadUpdate progress}) =
      _$UpdateAppUpdateEventImpl;

  Build? get accessBuild;
  ProgressDownloadUpdate get progress;
  @JsonKey(ignore: true)
  _$$UpdateAppUpdateEventImplCopyWith<_$UpdateAppUpdateEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateAppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedState value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableState value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableState value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateState value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedState value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableState value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateState value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedState value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableState value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult Function(_UpdateAppUpdateState value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAppStateCopyWith<$Res> {
  factory $UpdateAppStateCopyWith(
          UpdateAppState value, $Res Function(UpdateAppState) then) =
      _$UpdateAppStateCopyWithImpl<$Res, UpdateAppState>;
}

/// @nodoc
class _$UpdateAppStateCopyWithImpl<$Res, $Val extends UpdateAppState>
    implements $UpdateAppStateCopyWith<$Res> {
  _$UpdateAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateAppLoadedStateImplCopyWith<$Res> {
  factory _$$UpdateAppLoadedStateImplCopyWith(_$UpdateAppLoadedStateImpl value,
          $Res Function(_$UpdateAppLoadedStateImpl) then) =
      __$$UpdateAppLoadedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateAppLoadedStateImplCopyWithImpl<$Res>
    extends _$UpdateAppStateCopyWithImpl<$Res, _$UpdateAppLoadedStateImpl>
    implements _$$UpdateAppLoadedStateImplCopyWith<$Res> {
  __$$UpdateAppLoadedStateImplCopyWithImpl(_$UpdateAppLoadedStateImpl _value,
      $Res Function(_$UpdateAppLoadedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateAppLoadedStateImpl extends _UpdateAppLoadedState {
  const _$UpdateAppLoadedStateImpl() : super._();

  @override
  String toString() {
    return 'UpdateAppState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppLoadedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
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
    required TResult Function(_UpdateAppLoadedState value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableState value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableState value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateState value) update,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedState value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableState value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateState value)? update,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedState value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableState value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult Function(_UpdateAppUpdateState value)? update,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppLoadedState extends UpdateAppState {
  const factory _UpdateAppLoadedState() = _$UpdateAppLoadedStateImpl;
  const _UpdateAppLoadedState._() : super._();
}

/// @nodoc
abstract class _$$UpdateAppNoUpdateAvailableStateImplCopyWith<$Res> {
  factory _$$UpdateAppNoUpdateAvailableStateImplCopyWith(
          _$UpdateAppNoUpdateAvailableStateImpl value,
          $Res Function(_$UpdateAppNoUpdateAvailableStateImpl) then) =
      __$$UpdateAppNoUpdateAvailableStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateAppNoUpdateAvailableStateImplCopyWithImpl<$Res>
    extends _$UpdateAppStateCopyWithImpl<$Res,
        _$UpdateAppNoUpdateAvailableStateImpl>
    implements _$$UpdateAppNoUpdateAvailableStateImplCopyWith<$Res> {
  __$$UpdateAppNoUpdateAvailableStateImplCopyWithImpl(
      _$UpdateAppNoUpdateAvailableStateImpl _value,
      $Res Function(_$UpdateAppNoUpdateAvailableStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateAppNoUpdateAvailableStateImpl
    extends _UpdateAppNoUpdateAvailableState {
  const _$UpdateAppNoUpdateAvailableStateImpl() : super._();

  @override
  String toString() {
    return 'UpdateAppState.noUpdateAvailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppNoUpdateAvailableStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return noUpdateAvailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return noUpdateAvailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) {
    if (noUpdateAvailable != null) {
      return noUpdateAvailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedState value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableState value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableState value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateState value) update,
  }) {
    return noUpdateAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedState value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableState value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateState value)? update,
  }) {
    return noUpdateAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedState value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableState value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult Function(_UpdateAppUpdateState value)? update,
    required TResult orElse(),
  }) {
    if (noUpdateAvailable != null) {
      return noUpdateAvailable(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppNoUpdateAvailableState extends UpdateAppState {
  const factory _UpdateAppNoUpdateAvailableState() =
      _$UpdateAppNoUpdateAvailableStateImpl;
  const _UpdateAppNoUpdateAvailableState._() : super._();
}

/// @nodoc
abstract class _$$UpdateAppUpdateAvailableStateImplCopyWith<$Res> {
  factory _$$UpdateAppUpdateAvailableStateImplCopyWith(
          _$UpdateAppUpdateAvailableStateImpl value,
          $Res Function(_$UpdateAppUpdateAvailableStateImpl) then) =
      __$$UpdateAppUpdateAvailableStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Build? accessBuild});
}

/// @nodoc
class __$$UpdateAppUpdateAvailableStateImplCopyWithImpl<$Res>
    extends _$UpdateAppStateCopyWithImpl<$Res,
        _$UpdateAppUpdateAvailableStateImpl>
    implements _$$UpdateAppUpdateAvailableStateImplCopyWith<$Res> {
  __$$UpdateAppUpdateAvailableStateImplCopyWithImpl(
      _$UpdateAppUpdateAvailableStateImpl _value,
      $Res Function(_$UpdateAppUpdateAvailableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessBuild = freezed,
  }) {
    return _then(_$UpdateAppUpdateAvailableStateImpl(
      accessBuild: freezed == accessBuild
          ? _value.accessBuild
          : accessBuild // ignore: cast_nullable_to_non_nullable
              as Build?,
    ));
  }
}

/// @nodoc

class _$UpdateAppUpdateAvailableStateImpl
    extends _UpdateAppUpdateAvailableState {
  const _$UpdateAppUpdateAvailableStateImpl({required this.accessBuild})
      : super._();

  @override
  final Build? accessBuild;

  @override
  String toString() {
    return 'UpdateAppState.updateAvailable(accessBuild: $accessBuild)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppUpdateAvailableStateImpl &&
            (identical(other.accessBuild, accessBuild) ||
                other.accessBuild == accessBuild));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessBuild);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppUpdateAvailableStateImplCopyWith<
          _$UpdateAppUpdateAvailableStateImpl>
      get copyWith => __$$UpdateAppUpdateAvailableStateImplCopyWithImpl<
          _$UpdateAppUpdateAvailableStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return updateAvailable(accessBuild);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return updateAvailable?.call(accessBuild);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(accessBuild);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedState value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableState value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableState value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateState value) update,
  }) {
    return updateAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedState value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableState value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateState value)? update,
  }) {
    return updateAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedState value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableState value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult Function(_UpdateAppUpdateState value)? update,
    required TResult orElse(),
  }) {
    if (updateAvailable != null) {
      return updateAvailable(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppUpdateAvailableState extends UpdateAppState {
  const factory _UpdateAppUpdateAvailableState(
          {required final Build? accessBuild}) =
      _$UpdateAppUpdateAvailableStateImpl;
  const _UpdateAppUpdateAvailableState._() : super._();

  Build? get accessBuild;
  @JsonKey(ignore: true)
  _$$UpdateAppUpdateAvailableStateImplCopyWith<
          _$UpdateAppUpdateAvailableStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAppUpdateStateImplCopyWith<$Res> {
  factory _$$UpdateAppUpdateStateImplCopyWith(_$UpdateAppUpdateStateImpl value,
          $Res Function(_$UpdateAppUpdateStateImpl) then) =
      __$$UpdateAppUpdateStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Build? accessBuild, ProgressDownloadUpdate progress});
}

/// @nodoc
class __$$UpdateAppUpdateStateImplCopyWithImpl<$Res>
    extends _$UpdateAppStateCopyWithImpl<$Res, _$UpdateAppUpdateStateImpl>
    implements _$$UpdateAppUpdateStateImplCopyWith<$Res> {
  __$$UpdateAppUpdateStateImplCopyWithImpl(_$UpdateAppUpdateStateImpl _value,
      $Res Function(_$UpdateAppUpdateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessBuild = freezed,
    Object? progress = null,
  }) {
    return _then(_$UpdateAppUpdateStateImpl(
      accessBuild: freezed == accessBuild
          ? _value.accessBuild
          : accessBuild // ignore: cast_nullable_to_non_nullable
              as Build?,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as ProgressDownloadUpdate,
    ));
  }
}

/// @nodoc

class _$UpdateAppUpdateStateImpl extends _UpdateAppUpdateState {
  const _$UpdateAppUpdateStateImpl(
      {required this.accessBuild, required this.progress})
      : super._();

  @override
  final Build? accessBuild;
  @override
  final ProgressDownloadUpdate progress;

  @override
  String toString() {
    return 'UpdateAppState.update(accessBuild: $accessBuild, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAppUpdateStateImpl &&
            (identical(other.accessBuild, accessBuild) ||
                other.accessBuild == accessBuild) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessBuild, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAppUpdateStateImplCopyWith<_$UpdateAppUpdateStateImpl>
      get copyWith =>
          __$$UpdateAppUpdateStateImplCopyWithImpl<_$UpdateAppUpdateStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() noUpdateAvailable,
    required TResult Function(Build? accessBuild) updateAvailable,
    required TResult Function(
            Build? accessBuild, ProgressDownloadUpdate progress)
        update,
  }) {
    return update(accessBuild, progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? noUpdateAvailable,
    TResult? Function(Build? accessBuild)? updateAvailable,
    TResult? Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
  }) {
    return update?.call(accessBuild, progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? noUpdateAvailable,
    TResult Function(Build? accessBuild)? updateAvailable,
    TResult Function(Build? accessBuild, ProgressDownloadUpdate progress)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(accessBuild, progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateAppLoadedState value) loaded,
    required TResult Function(_UpdateAppNoUpdateAvailableState value)
        noUpdateAvailable,
    required TResult Function(_UpdateAppUpdateAvailableState value)
        updateAvailable,
    required TResult Function(_UpdateAppUpdateState value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateAppLoadedState value)? loaded,
    TResult? Function(_UpdateAppNoUpdateAvailableState value)?
        noUpdateAvailable,
    TResult? Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult? Function(_UpdateAppUpdateState value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateAppLoadedState value)? loaded,
    TResult Function(_UpdateAppNoUpdateAvailableState value)? noUpdateAvailable,
    TResult Function(_UpdateAppUpdateAvailableState value)? updateAvailable,
    TResult Function(_UpdateAppUpdateState value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppUpdateState extends UpdateAppState {
  const factory _UpdateAppUpdateState(
          {required final Build? accessBuild,
          required final ProgressDownloadUpdate progress}) =
      _$UpdateAppUpdateStateImpl;
  const _UpdateAppUpdateState._() : super._();

  Build? get accessBuild;
  ProgressDownloadUpdate get progress;
  @JsonKey(ignore: true)
  _$$UpdateAppUpdateStateImplCopyWith<_$UpdateAppUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
