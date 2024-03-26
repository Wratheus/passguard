import 'package:dio/dio.dart';

final class ClientSendOptions {
  final CancelToken? cancelToken;
  final bool overlayLoader;

  const ClientSendOptions({this.cancelToken, this.overlayLoader = false});

  @override
  String toString() =>
      'ClientSendOptions(cancelToken: $cancelToken, overlayLoader: $overlayLoader)';
}
