import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/router/navigator.dart';
import 'package:passguard/src/data/models/client_send_options.dart';
import 'package:passguard/src/domain/requests/user.dart';
import 'package:passguard/src/presentation/pages/auth/bloc/auth_page_bloc.dart';

final class AuthPageService {
  Future<void> userAuth(BuildContext context) async {
    AuthPageBloc bloc = context.read<AuthPageBloc>();

    final String password = bloc.pswdTextController.text;
    final String login = bloc.loginTextController.text;
    bloc.loginCancelToken = CancelToken();

    if (await UserRequests.login(
      password: password,
      login: login,
      options: ClientSendOptions(
          cancelToken: bloc.loginCancelToken, overlayLoader: true),
    )) {
      await NavigatorPage.home(context);
    }
  }

  Future<void> onRegistration(BuildContext context) async =>
      await NavigatorPage.registration(context);
}
