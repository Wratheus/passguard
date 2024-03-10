import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passguard/src/presentation/pages/home/service/service.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc({required this.service}) : super(const HomePageState.loading()) {
    on<HomePageEvent>((HomePageEvent event, Emitter<HomePageState> emit) {
      event.map(
        loading: (value) => const HomePageEvent.loading(),
        loaded: (value) => const HomePageEvent.loaded(),
      );
    });
  }

  final HomePageService service;
}
