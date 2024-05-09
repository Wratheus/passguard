import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/router/navigator.dart';
// import 'package:passguard/src/presentation/pages/auth/bloc/auth_page_bloc.dart';

final class AuthPageService {
  Future<bool> userAuth(BuildContext context) async {
    // AuthPageBloc bloc = context.read<AuthPageBloc>();

    // final String password = bloc.pswdTextController.text;
    // final String login = bloc.loginTextController.text;

    // var result = await UserRequests.login(
    //   password: password,
    //   login: login,
    // );

    // print(result.data);
    await NavigatorPage.home(context);
    return true;
  }

  Future<void> onRegistration(BuildContext context) async =>
      await NavigatorPage.registration(context);
}
