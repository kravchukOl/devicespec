import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'devicespec_method_channel.dart';

abstract class DevicespecPlatform extends PlatformInterface {
  /// Constructs a DevicespecPlatform.
  DevicespecPlatform() : super(token: _token);

  static final Object _token = Object();

  static DevicespecPlatform _instance = MethodChannelDevicespec();

  /// The default instance of [DevicespecPlatform] to use.
  ///
  /// Defaults to [MethodChannelDevicespec].
  static DevicespecPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DevicespecPlatform] when
  /// they register themselves.
  static set instance(DevicespecPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getDevice() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
