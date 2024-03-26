import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/widgets/button.dart';
class UpdateCheckState extends StatelessWidget {
  const UpdateCheckState({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAppBloc, UpdateAppState>(
      builder: (BuildContext context, UpdateAppState state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          loaded: (value) => Column(
            children:[
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
                t.checkingForAppUpdates,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.labelMedium,
              ),
              Container(
                margin: const EdgeInsets.only(top: 3),
                child: Text(
                  t.checkingForAppUpdatesDescript,
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.bodySmall,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                width: 20,
                height: 20,
                child: const CircularProgressIndicator(strokeWidth: 2),
              ),
              Button(
                  tap: () => Navigator.pop(context),
                  margin: const EdgeInsets.only(bottom: 5),
                  text: t.close)
            ],
          ),
        );
      },
    );
  }
}
