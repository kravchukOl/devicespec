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


  Future<String?> getPlatformVersion() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getgetOSAPILevel() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getDevice() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getModel() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getRelease() async {
   throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getBrand() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getProduct() async {
   throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getManufacturer() async {
   throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getTags() async {
 throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getDisplay() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getSerial() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getHardware() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getCPU_ABI() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getCPU_AB2() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getUser() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getHost() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getDeviceBaseInfo() async {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
