import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/i18n/translations.g.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:passguard/src/presentation/widgets/ink_btn.dart';

class BuildStateDownload extends StatelessWidget {
  const BuildStateDownload({super.key});

  Widget downloadWidget(BuildContext context, {required UpdateAppState state}) {
    UpdateAppBloc bloc = context.read<UpdateAppBloc>();

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children:[
          InkBtn(
            tap: () => bloc.service.cancelDownload(context),
            canRequestFocus: false,
            color: const Color(0xFF474A61).withOpacity(.1),
            borderRadius: BorderRadius.circular(10),
            margin: const EdgeInsets.only(bottom: 5),
            child: Container(
              width: context.mq.size.width,
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 10,
                    height: 10,
                    child: const CircularProgressIndicator(strokeWidth: 2),
                  ),
                  Text(
                    state.progress!.total == null
                        ? t.uploadWait
                        : t.upload(
                            value: ((state.progress!.received! / 1024) / 1024)
                                .toStringAsFixed(1),
                            total: ((state.progress!.total! / 1024) / 1024)
                                .toStringAsFixed(1)),
                    style: context.theme.textTheme.labelLarge,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 20),
            width: 50,
            child: LinearProgressIndicator(
              color: Colors.black,
              backgroundColor: Colors.black12,
              minHeight: 1.5,
              value: state.progress!.percent,
            ),
          ),
          Text(
            t.updateDownloadFromServer,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodySmall,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAppBloc, UpdateAppState>(
      builder: (BuildContext context, UpdateAppState state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          update: (value) => downloadWidget(context, state: value),
        );
      },
    );
  }
}
