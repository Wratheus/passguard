import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/data/models/build.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/modals/update_app/service/service.dart';
import 'package:passguard/src/presentation/modals/update_app/widget.dart';

class UpdateAppMain extends StatelessWidget {
  UpdateAppMain({super.key, this.accessBuild});

  final Build? accessBuild;
  final UpdateAppService updateAppService = UpdateAppService();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext _) =>
          UpdateAppBloc(accessBuild: accessBuild, service: updateAppService),
      child: const UpdateAppWidget(),
    );
  }
}
