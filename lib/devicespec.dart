
import 'devicespec_platform_interface.dart';

class Devicespec {

  Future<String?> getPlatformVersion() {
    return DevicespecPlatform.instance.getPlatformVersion();
  }

   Future<String?> getgetOSAPILevel() {
    return DevicespecPlatform.instance.getgetOSAPILevel();
  }

  Future<String?> getDevice() {
    return DevicespecPlatform.instance.getDevice();
  }

   Future<String?> getModel() {
    return DevicespecPlatform.instance.getModel();
  }

   Future<String?> getRelease() {
    return DevicespecPlatform.instance.getRelease();
  }

  Future<String?> getBrand() {
    return DevicespecPlatform.instance.getBrand();
  }

  Future<String?> getProduct() {
    return DevicespecPlatform.instance.getProduct();
  }

  Future<String?> getManufacturer() {
    return DevicespecPlatform.instance.getManufacturer();
  }

   Future<String?> getTags() {
    return DevicespecPlatform.instance.getTags();
  }

  Future<String?> getDisplay() {
    return DevicespecPlatform.instance.getDisplay();
  }

  Future<String?> getSerial() {
    return DevicespecPlatform.instance.getSerial();
  }

  Future<String?> getHardware() {
    return DevicespecPlatform.instance.getHardware();
  }

  Future<String?> getCPU_ABI() {
    return DevicespecPlatform.instance.getCPU_ABI();
  }

  Future<String?> getCPU_AB2() {
    return DevicespecPlatform.instance.getCPU_AB2();
  }

   Future<String?> getUser() {
    return DevicespecPlatform.instance.getUser();
  }

  Future<String?> getHost() {
    return DevicespecPlatform.instance.getHost();
  }

  Future<String?> getDeviceBaseInfo() {
    return DevicespecPlatform.instance.getDeviceBaseInfo();
  }


}
