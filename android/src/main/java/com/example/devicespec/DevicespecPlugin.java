package com.example.devicespec;

import androidx.annotation.NonNull;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/** DevicespecPlugin */
public class DevicespecPlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;

  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "devicespec");
    channel.setMethodCallHandler(this);
  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {

    if (call.method.equals("getPlatformVersion")) {
      result.success(DeviceInformation.getOSVersion());
    }

    if(call.method.equals("getOSAPILevel")){
      result.success(DeviceInformation.getOSAPILevel());
    }
    
    if(call.method.equals("getDevice")){
      result.success(DeviceInformation.getDevice());
    }

    if(call.method.equals("getModel")){
      result.success(DeviceInformation.getModel());
    }

    if(call.method.equals("getRelease")){
      result.success(DeviceInformation.getRelease());
    }

    if(call.method.equals("getBrand")){
      result.success(DeviceInformation.getBrand());
    }

    if(call.method.equals("getProduct")){
      result.success(DeviceInformation.getProduct());
    }

    if(call.method.equals("getManufacturer")){
      result.success(DeviceInformation.getManufacturer());
    }

    if(call.method.equals("getTags")){
      result.success(DeviceInformation.getTags());
    }

    if(call.method.equals("getDisplay")){
      result.success(DeviceInformation.getDisplay());
    }

    if(call.method.equals("getSerial")){
      result.success(DeviceInformation.getSerial());
    }

    if(call.method.equals("getHardware")){
      result.success(DeviceInformation.getHardware());
    }

    if(call.method.equals("getCPU_ABI")){
      result.success(DeviceInformation.getCPU_ABI());
    }

    if(call.method.equals("getCPU_ABI2")){
      result.success(DeviceInformation.getCPU_ABI2());
    }

    if(call.method.equals("getUser")){
      result.success(DeviceInformation.getUser());
    }

    if(call.method.equals("getHost")){
      result.success(DeviceInformation.getHost());
    }

    if(call.method.equals("getDeviceBaseInfo")){
      result.success(DeviceInformation.getDeviceBaseInfo());
    }


    else {
      result.notImplemented();
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }
}
