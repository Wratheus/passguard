part of 'settings_page_bloc.dart';

@freezed
class SettingsPageEvent with _$SettingsPageEvent {
  const factory SettingsPageEvent.loading() = _SettingsPageEventLoading;

  const factory SettingsPageEvent.loaded() = _SettingsPageEventLoaded;
}
