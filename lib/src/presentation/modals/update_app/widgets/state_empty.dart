import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/configs/app.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/widgets/button.dart';

class UpdateEmptyState extends StatelessWidget {
  const UpdateEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAppBloc, UpdateAppState>(
      builder: (BuildContext context, UpdateAppState state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          noUpdateAvailable: (value) => Column(
            children:[
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFF474A61).withOpacity(.1),
                ),
                child:
                    const Icon(Icons.public, size: 16, color: Colors.black87),
              ),
              Text(
                t.noUpdateAvailable,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.labelMedium,
              ),
              Container(
                margin: const EdgeInsets.only(top: 3, bottom: 20),
                child: Text(
                  t.currentAppLastAvailable(v: AppConfig.buildName),
                  textAlign: TextAlign.center,
                  style: context.theme.textTheme.bodySmall,
                ),
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
