part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.loading() = _HomePageEventLoading;

  const factory HomePageEvent.loaded() = _HomePageEventLoaded;
}
