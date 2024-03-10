part of 'registration_page_bloc.dart';

@freezed
class RegistrationPageEvent with _$RegistrationPageEvent {
  const factory RegistrationPageEvent.loading() = _RegistrationPageEventLoading;

  const factory RegistrationPageEvent.loaded() = _RegistrationPageEventLoaded;
}
