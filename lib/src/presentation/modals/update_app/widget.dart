import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/modals/update_app/widgets/build_data.dart';
import 'package:passguard/src/presentation/modals/update_app/widgets/state_check.dart';
import 'package:passguard/src/presentation/modals/update_app/widgets/state_empty.dart';
class UpdateAppWidget extends StatelessWidget {
  const UpdateAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    UpdateAppBloc bloc = context.read<UpdateAppBloc>();

    return BlocConsumer<UpdateAppBloc, UpdateAppState>(
      listener: (BuildContext context, UpdateAppState state) =>
          state.mapOrNull(loaded: (value) => bloc.service.initialize(context)),
      builder: (BuildContext context, UpdateAppState state) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.themeModeColors.bgContainer),
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: context.mq.padding.bottom > 0
                    ? context.mq.padding.bottom
                    : 5),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [BuildData(), UpdateCheckState(), UpdateEmptyState()],
            ),
          ),
        );
      },
    );
  }
}
