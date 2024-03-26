import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:passguard/src/core/helpers/lib.dart';
import 'package:passguard/src/data/models/build.dart';
import 'package:passguard/src/data/models/progress_download_update.dart';
import 'package:passguard/src/presentation/modals/update_app/service/service.dart';

part 'update_app_event.dart';

part 'update_app_state.dart';

part 'update_app_bloc.freezed.dart';

class UpdateAppBloc extends Bloc<UpdateAppEvent, UpdateAppState> {
  UpdateAppBloc({this.accessBuild, required this.service})
      : super(accessBuild != null
            ? UpdateAppState.updateAvailable(accessBuild: accessBuild)
            : const UpdateAppState.noUpdateAvailable()) {
    on<UpdateAppEvent>(
      (UpdateAppEvent event, Emitter<UpdateAppState> emit) {
        event.map(
          noUpdateAvailable: (_UpdateAppNoUpdateAvailableEvent value) => emit(
            const UpdateAppState.noUpdateAvailable(),
          ),
          updateAvailable: (_UpdateAppUpdateAvailableEvent value) => emit(
            UpdateAppState.updateAvailable(accessBuild: value.accessBuild),
          ),
          update: (_UpdateAppUpdateEvent value) => emit(
            UpdateAppState.update(
                accessBuild: value.accessBuild, progress: value.progress),
          ),
          loaded: (_UpdateAppLoadedEvent value) => emit(
            const UpdateAppState.loaded(),
          ),
        );
      },
    );
    add(const UpdateAppEvent.loaded());
  }

  final UpdateAppService service;
  CancelToken? updateAppCancelToken;
  Build? accessBuild;

  @override
  Future<void> close() async {
    LibHelper.cancelToken(updateAppCancelToken);
    super.close();
  }
}
