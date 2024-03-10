part of 'registration_page_bloc.dart';

@freezed
class RegistrationPageState with _$RegistrationPageState {
  const factory RegistrationPageState.loading() = _RegistrationPageStateLoading;

  const factory RegistrationPageState.loaded() = _RegistrationPageStateLoaded;
}
