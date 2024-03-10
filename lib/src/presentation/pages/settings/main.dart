import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/presentation/pages/settings/bloc/settings_page_bloc.dart';
import 'package:passguard/src/presentation/pages/settings/service/service.dart';
import 'package:passguard/src/presentation/pages/settings/widgets/content.dart';

class SettingsPageMain extends StatelessWidget {
  final SettingsPageService service = SettingsPageService();

  SettingsPageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext _) => SettingsPageBloc(service: service),
      child: const SettingsPageContentWidget(),
    );
  }
}
