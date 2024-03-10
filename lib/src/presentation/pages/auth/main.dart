import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/presentation/pages/auth/bloc/auth_page_bloc.dart';
import 'package:passguard/src/presentation/pages/auth/service/service.dart';
import 'package:passguard/src/presentation/pages/auth/widgets/content.dart';

class AuthPageMain extends StatelessWidget {
  final AuthPageService service = AuthPageService();

  AuthPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext _) => AuthPageBloc(service: service),
      child: const AuthContentWidget(),
    );
  }
}
