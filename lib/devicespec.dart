
import 'devicespec_platform_interface.dart';

class Devicespec {
  Future<String?> getPlatformVersion() {
    return DevicespecPlatform.instance.getPlatformVersion();

    
  }
}
