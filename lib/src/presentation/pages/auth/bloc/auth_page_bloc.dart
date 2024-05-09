import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passguard/src/presentation/pages/auth/service/service.dart';

part 'auth_page_event.dart';

part 'auth_page_state.dart';

part 'auth_page_bloc.freezed.dart';

class AuthPageBloc extends Bloc<AuthPageEvent, AuthPageState> {
  AuthPageBloc({required this.service}) : super(const AuthPageState.loading()) {
    on<AuthPageEvent>((AuthPageEvent event, Emitter<AuthPageState> emit) {
      event.map(
          loading: (value) => const AuthPageEvent.loading(),
          loaded: (value) => const AuthPageEvent.loaded());
    });
  }

  final AuthPageService service;
  final TextEditingController loginTextController = TextEditingController();
  final TextEditingController pswdTextController = TextEditingController();
}
