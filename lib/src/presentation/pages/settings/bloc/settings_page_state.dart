part of 'settings_page_bloc.dart';

@freezed
class SettingsPageState with _$SettingsPageState {
  const factory SettingsPageState.loading() = _SettingsPageStateLoading;

  const factory SettingsPageState.loaded() = _SettingsPageStateLoaded;
}
