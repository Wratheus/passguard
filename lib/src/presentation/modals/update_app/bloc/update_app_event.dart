part of 'update_app_bloc.dart';

@freezed
class UpdateAppEvent with _$UpdateAppEvent {
  const factory UpdateAppEvent.loaded() = _UpdateAppLoadedEvent;

  const factory UpdateAppEvent.noUpdateAvailable() =
      _UpdateAppNoUpdateAvailableEvent;

  const factory UpdateAppEvent.updateAvailable({required Build? accessBuild}) =
      _UpdateAppUpdateAvailableEvent;

  const factory UpdateAppEvent.update(
      {required Build? accessBuild,
      required ProgressDownloadUpdate progress}) = _UpdateAppUpdateEvent;
}
