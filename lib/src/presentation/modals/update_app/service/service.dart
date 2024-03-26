import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:passguard/src/core/app.dart';
import 'package:passguard/src/core/utils/enums.dart';
import 'package:passguard/src/data/models/progress_download_update.dart';
import 'package:passguard/src/domain/requests/app.dart';
import 'package:passguard/src/presentation/modals/update_app/bloc/update_app_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:passguard/src/core/extensions/log.dart';
import 'package:passguard/src/data/models/build.dart';
import 'package:passguard/src/core/services/http.dart';
import 'package:passguard/src/core/services/ui.dart';

class UpdateAppService {
  Future<void> initialize(BuildContext context) async {
    UpdateAppBloc bloc = context.read<UpdateAppBloc>();

    if (bloc.accessBuild != null) {
      bloc.add(UpdateAppEvent.updateAvailable(accessBuild: bloc.accessBuild));
      return;
    }
    await checkUpdate(context);
  }

  Future<void> checkUpdate(BuildContext context) async {
    UpdateAppBloc bloc = context.read<UpdateAppBloc>();

    Build? build = await AppRequests.checkUpdate();
    if (build != null) {
      bloc.add(UpdateAppEvent.updateAvailable(accessBuild: build));
      return;
    }
    bloc.add(const UpdateAppEvent.noUpdateAvailable());
  }

  Future<void> download(BuildContext context) async {
    UpdateAppBloc bloc = context.read<UpdateAppBloc>();

    if (bloc.state.accessBuild == null) {
      return;
    }
    Build build = bloc.state.accessBuild!;

    ProgressDownloadUpdate progressDownload = const ProgressDownloadUpdate();
    bloc.add(
        UpdateAppEvent.update(accessBuild: build, progress: progressDownload));

    Directory directoryStorage = await getTemporaryDirectory();
    String? directoryStoragePatch = directoryStorage.path;

    String filename = '${DateTime.now().millisecondsSinceEpoch}.apk';
    String savePath = '$directoryStoragePatch/$filename';

    bloc.updateAppCancelToken = CancelToken();

    Response<dynamic> response = await HttpService.download(
      url: "${App.buildPath}passguard_${build.id}.apk",
      savePath: savePath,
      cancelToken: bloc.updateAppCancelToken,
      onReceiveProgress: (int received, int total) {
        if (total != -1) {
          progressDownload = progressDownload.copyWith(
            received: received,
            total: total,
            percent: (received / total),
          );
          bloc.add(UpdateAppEvent.update(
              accessBuild: build, progress: progressDownload));
        }
      },
    ).whenComplete(
      () async {
        if (progressDownload.percent != null &&
            progressDownload.percent! >= 1) {
          await OpenFilex.open(savePath);
          return;
        }
      },
    );

    if (response.data == null) {
      "response data - ${response.data}"
          .toString()
          .log(name: "UpdateAppBloc.download()", level: LogLevel.error);
      return;
    }

    /// if download failed
    if (response.statusCode != 200) {
      if (bloc.updateAppCancelToken != null) {
        UiService.showSnack(context,
            text: response.statusMessage ?? '', type: TypeMessage.error);
      }
    }
    bloc.updateAppCancelToken = null;
    bloc.add(UpdateAppEvent.updateAvailable(accessBuild: bloc.state.accessBuild));
  }

  void cancelDownload(BuildContext context) {
    UpdateAppBloc bloc = context.read<UpdateAppBloc>();

    bloc.add(UpdateAppEvent.updateAvailable(accessBuild: bloc.state.accessBuild));
  }
}
