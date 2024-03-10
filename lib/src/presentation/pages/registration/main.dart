import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/presentation/pages/registration/bloc/registration_page_bloc.dart';
import 'package:passguard/src/presentation/pages/registration/service/service.dart';
import 'package:passguard/src/presentation/pages/registration/widgets/content.dart';

class RegistrationPageMain extends StatelessWidget {
  final RegistrationPageService service;

  const RegistrationPageMain({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext _) => RegistrationPageBloc(service: service),
      child: const RegistrationPageContentWidget(),
    );
  }
}
