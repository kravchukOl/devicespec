import 'package:flutter_test/flutter_test.dart';
import 'package:devicespec/devicespec.dart';
import 'package:devicespec/devicespec_platform_interface.dart';
import 'package:devicespec/devicespec_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDevicespecPlatform
    with MockPlatformInterfaceMixin
    implements DevicespecPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
  
  @override
  Future<String?> getDevice() {

    throw UnimplementedError();
  }
  
  @override
  Future<String?> getBrand() {
    // TODO: implement getBrand
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getCPU_AB2() {
    // TODO: implement getCPU_AB2
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getCPU_ABI() {
    // TODO: implement getCPU_ABI
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getDeviceBaseInfo() {
    // TODO: implement getDeviceBaseInfo
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getDisplay() {
    // TODO: implement getDisplay
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getHardware() {
    // TODO: implement getHardware
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getHost() {
    // TODO: implement getHost
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getManufacturer() {
    // TODO: implement getManufacturer
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getModel() {
    // TODO: implement getModel
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getProduct() {
    // TODO: implement getProduct
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getRelease() {
    // TODO: implement getRelease
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getSerial() {
    // TODO: implement getSerial
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getTags() {
    // TODO: implement getTags
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }
  
  @override
  Future<String?> getgetOSAPILevel() {
    // TODO: implement getgetOSAPILevel
    throw UnimplementedError();
  }
}

void main() {
  final DevicespecPlatform initialPlatform = DevicespecPlatform.instance;

  test('$MethodChannelDevicespec is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDevicespec>());
  });

  test('getPlatformVersion', () async {
    Devicespec devicespecPlugin = Devicespec();
    MockDevicespecPlatform fakePlatform = MockDevicespecPlatform();
    DevicespecPlatform.instance = fakePlatform;

    expect(await devicespecPlugin.getPlatformVersion(), '42');
  });
}
