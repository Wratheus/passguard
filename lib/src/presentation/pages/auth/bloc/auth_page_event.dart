part of 'auth_page_bloc.dart';

@freezed
class AuthPageEvent with _$AuthPageEvent {
  const factory AuthPageEvent.loading() = _AuthPageEventLoading;

  const factory AuthPageEvent.loaded() = _AuthPageEventLoaded;
}
