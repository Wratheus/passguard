import 'package:platform_device_id/platform_device_id.dart';

sealed class CurrentDevice {
  static String _id = '';
  static String get id => _id;

  static Future<void> init() async {
    _id = await PlatformDeviceId.getDeviceId ?? '';
  }
}
