import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passguard/src/presentation/pages/registration/service/service.dart';

part 'registration_page_event.dart';

part 'registration_page_state.dart';

part 'registration_page_bloc.freezed.dart';

class RegistrationPageBloc
    extends Bloc<RegistrationPageEvent, RegistrationPageState> {
  RegistrationPageBloc({required this.service}) : super(const RegistrationPageState.loading()) {
    on<RegistrationPageEvent>(
        (RegistrationPageEvent event, Emitter<RegistrationPageState> emit) {
      event.map(
        loading: (value) => const RegistrationPageEvent.loading(),
        loaded: (value) => const RegistrationPageEvent.loaded(),
      );
    });
  }

  final RegistrationPageService service;
  final TextEditingController loginTextController = TextEditingController();
  final TextEditingController pswdTextController = TextEditingController();
}
