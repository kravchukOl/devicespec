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
    throw UnimplementedError('getPlatformVersion() has not been implemented.');
  }

  Future<String?> getOSAPILevel() async {
    throw UnimplementedError('getgetOSAPILevel() has not been implemented.');
  }

  Future<String?> getDevice() async {
    throw UnimplementedError('getDevice() has not been implemented.');
  }

  Future<String?> getModel() async {
    throw UnimplementedError('getModel() has not been implemented.');
  }

  Future<String?> getRelease() async {
   throw UnimplementedError('getRelease() has not been implemented.');
  }

  Future<String?> getBrand() async {
    throw UnimplementedError('getBrand() has not been implemented.');
  }

  Future<String?> getProduct() async {
   throw UnimplementedError('getProduct() has not been implemented.');
  }

  Future<String?> getManufacturer() async {
   throw UnimplementedError('getManufacturer() has not been implemented.');
  }

  Future<String?> getTags() async {
 throw UnimplementedError('getTags() has not been implemented.');
  }

  Future<String?> getDisplay() async {
    throw UnimplementedError('getDisplay() has not been implemented.');
  }

  Future<String?> getSerial() async {
    throw UnimplementedError('getSerial() has not been implemented.');
  }

  Future<String?> getHardware() async {
    throw UnimplementedError('getHardware() has not been implemented.');
  }

  Future<String?> getCPU_ABI() async {
    throw UnimplementedError('getCPU_ABI() has not been implemented.');
  }

  Future<String?> getCPU_AB2() async {
    throw UnimplementedError('getCPU_AB2() has not been implemented.');
  }

  Future<String?> getUser() async {
    throw UnimplementedError('getUser() has not been implemented.');
  }

  Future<String?> getHost() async {
    throw UnimplementedError('getHost() has not been implemented.');
  }

  Future<String?> getDeviceBaseInfo() async {
    throw UnimplementedError('getDeviceBaseInfo() has not been implemented.');
  }
}
