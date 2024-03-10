import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passguard/src/presentation/pages/settings/service/service.dart';

part 'settings_page_event.dart';

part 'settings_page_state.dart';

part 'settings_page_bloc.freezed.dart';

class SettingsPageBloc extends Bloc<SettingsPageEvent, SettingsPageState> {
  final SettingsPageService service;

  SettingsPageBloc({required this.service})
      : super(const SettingsPageState.loading()) {
    on<SettingsPageEvent>(
        (SettingsPageEvent event, Emitter<SettingsPageState> emit) {
      event.map(
          loading: (value) => const SettingsPageEvent.loading(),
          loaded: (value) => const SettingsPageEvent.loaded());
    });
  }
}
