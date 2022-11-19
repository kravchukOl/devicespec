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
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getgetOSAPILevel() async {
    final version = await methodChannel.invokeMethod<String>('getOSAPILevel');
    return version;
  }

  @override
  Future<String?> getDevice() async {
    final device = await methodChannel.invokeMethod<String>('getDevice');
    return device;
  }

  @override
  Future<String?> getModel() async {
    final device = await methodChannel.invokeMethod<String>('getModel');
    return device;
  }

  @override
  Future<String?> getRelease() async {
    final device = await methodChannel.invokeMethod<String>('getRelease');
    return device;
  }

  @override
  Future<String?> getBrand() async {
    final device = await methodChannel.invokeMethod<String>('getBrand');
    return device;
  }

  @override
  Future<String?> getProduct() async {
    final device = await methodChannel.invokeMethod<String>('getProduct');
    return device;
  }

  @override
  Future<String?> getManufacturer() async {
    final device = await methodChannel.invokeMethod<String>('getManufacturer');
    return device;
  }

  @override
  Future<String?> getTags() async {
    final device = await methodChannel.invokeMethod<String>('getTags');
    return device;
  }

  @override
  Future<String?> getDisplay() async {
    final device = await methodChannel.invokeMethod<String>('getDisplay');
    return device;
  }

  @override
  Future<String?> getSerial() async {
    final device = await methodChannel.invokeMethod<String>('getSerial');
    return device;
  }

  @override
  Future<String?> getHardware() async {
    final device = await methodChannel.invokeMethod<String>('getHardware');
    return device;
  }

  @override
  Future<String?> getCPU_ABI() async {
    final device = await methodChannel.invokeMethod<String>('getCPU_ABI');
    return device;
  }

  @override
  Future<String?> getCPU_AB2() async {
    final device = await methodChannel.invokeMethod<String>('getCPU_ABI2');
    return device;
  }

  @override
  Future<String?> getUser() async {
    final device = await methodChannel.invokeMethod<String>('getUser');
    return device;
  }

  @override
  Future<String?> getHost() async {
    final device = await methodChannel.invokeMethod<String>('getHost');
    return device;
  }

  @override
  Future<String?> getDeviceBaseInfo() async {
    final device = await methodChannel.invokeMethod<String>('getDeviceBaseInfo');
    return device;
  }
}
