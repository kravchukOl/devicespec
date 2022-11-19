import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'devicespec_platform_interface.dart';

/// An implementation of [DevicespecPlatform] that uses method channels.
class MethodChannelDevicespec extends DevicespecPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('devicespec');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
