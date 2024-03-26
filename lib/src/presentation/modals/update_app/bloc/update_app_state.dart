part of 'update_app_bloc.dart';

@freezed
class UpdateAppState with _$UpdateAppState {
  const UpdateAppState._();

  const factory UpdateAppState.loaded() = _UpdateAppLoadedState;

  const factory UpdateAppState.noUpdateAvailable() =
      _UpdateAppNoUpdateAvailableState;

  const factory UpdateAppState.updateAvailable({required Build? accessBuild}) =
      _UpdateAppUpdateAvailableState;

  const factory UpdateAppState.update(
      {required Build? accessBuild,
      required ProgressDownloadUpdate progress}) = _UpdateAppUpdateState;

  Build? get accessBuild => mapOrNull(
      update: (_UpdateAppUpdateState value) => value.accessBuild,
      updateAvailable: (_UpdateAppUpdateAvailableState value) => value.accessBuild);

  ProgressDownloadUpdate? get progress =>
      mapOrNull(update: (_UpdateAppUpdateState value) => value.progress);
}
