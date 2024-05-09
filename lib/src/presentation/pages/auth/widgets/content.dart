import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/presentation/pages/auth/bloc/auth_page_bloc.dart';
import 'package:passguard/src/presentation/widgets/ink_btn.dart';
import 'package:passguard/src/presentation/widgets/text_field.dart';

class AuthContentWidget extends StatelessWidget {
  const AuthContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthPageBloc bloc = context.read<AuthPageBloc>();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shield_moon,
                  size: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Логин",
                    style: context.theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 250,
                  height: 30,
                  decoration: BoxDecoration(
                    color: context.themeModeColors.bgContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: UiTextField(
                    suffix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        Icons.mail_lock_rounded,
                        size: 15,
                      ),
                    ),
                    controller: bloc.loginTextController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Пароль",
                    style: context.theme.textTheme.labelLarge,
                  ),
                ),
                Container(
                  width: 250,
                  height: 30,
                  decoration: BoxDecoration(
                    color: context.themeModeColors.bgContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: UiTextField(
                    suffix: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        Icons.lock_clock_rounded,
                        size: 15,
                      ),
                    ),
                    controller: bloc.pswdTextController,
                    isPassword: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkBtn(
                  color: context.theme.scaffoldBackgroundColor,
                  tap: () => bloc.service.onRegistration(context),
                  child: Text(
                    "Зарегестрироваться",
                    style: context.theme.textTheme.bodyMedium
                        ?.copyWith(color: context.theme.hintColor),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkBtn(
                  color: context.theme.scaffoldBackgroundColor,
                  tap: () => bloc.service.userAuth(context),
                  child: Text(
                    "Войти",
                    style: context.theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
