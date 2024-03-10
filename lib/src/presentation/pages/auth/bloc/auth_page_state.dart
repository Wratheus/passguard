part of 'auth_page_bloc.dart';

@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState.loading() = _AuthPageStateLoading;

  const factory AuthPageState.loaded() = _AuthPageStateLoaded;
}
