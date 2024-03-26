import 'package:demoji/demoji.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/modals/update_app/widgets/build_state_download.dart';
import 'package:passguard/src/presentation/modals/update_app/widgets/build_state_proposal.dart';

class BuildData extends StatelessWidget {
  const BuildData({super.key});

  Widget downloadWidget(BuildContext context, {required UpdateAppState state}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.deepPurpleAccent),
          child: const Icon(Icons.public, size: 16, color: Colors.white),
        ),
        Text(
          t.updateAvailable,
          textAlign: TextAlign.center,
          style: context.theme.textTheme.labelMedium,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20, top: 3),
          child: Text(
            state.accessBuild!.descript.isNotEmpty
                ? state.accessBuild!.descript
                : t.absentDescriptUpdate,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodySmall,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 10, bottom: 0),
          child: Text(
            t.updateVersion(emoji: Demoji.rocket, v: state.accessBuild!.name),
            style: context.theme.textTheme.labelLarge,
          ),
        ),
        const BuildStateProposal(),
        const BuildStateDownload()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAppBloc, UpdateAppState>(
      builder: (BuildContext context, UpdateAppState state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          updateAvailable: (value) => downloadWidget(context, state: value),
          update: (value) => downloadWidget(context, state: value),
        );
      },
    );
  }
}
