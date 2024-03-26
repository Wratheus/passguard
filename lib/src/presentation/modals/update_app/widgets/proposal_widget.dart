import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/widgets/button.dart';

class UpdateAppProposalWidget extends StatelessWidget {
  const UpdateAppProposalWidget({super.key, required this.state});

  final UpdateAppState state;

  @override
  Widget build(BuildContext context) {
    UpdateAppBloc bloc = context.read<UpdateAppBloc>();

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Button(
              tap: () => bloc.service.download(context),
              margin: const EdgeInsets.only(bottom: 5),
              text: t.updateAndInstall),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              t.problemUpdating,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
