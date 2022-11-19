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
