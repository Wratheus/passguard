import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/modals/update_app/widgets/proposal_widget.dart';

class BuildStateProposal extends StatelessWidget {
  const BuildStateProposal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAppBloc, UpdateAppState>(
      builder: (BuildContext context, UpdateAppState state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          updateAvailable: (value) {
            return UpdateAppProposalWidget(state: value);
          },
        );
      },
    );
  }
}
