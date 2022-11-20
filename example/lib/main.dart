import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:devicespec/devicespec.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  String _platformVersion = 'Unknown';
  String _OSAPILevel = 'Unknown';
  String _device = 'Unknown';
  String _model = 'Unknown';
  String _release = 'Unknown';
  String _brand = 'Unknown';
  String _product = 'Unknown';
  String _manufacturer = 'Unknown';
  String _display = 'Unknown';
  String _cpu_abi = 'Unknown';
  String _cpu_abi2 = 'Unknown';
  String _hardware = 'Unknown';
  String _serial = 'Unknown';
  String _user = 'Unknown';
  String _host = 'Unknown';

  final _devicespecPlugin = Devicespec();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Future<void> initPlatformState() async {
    String platformVersion = 'Failed to get platform version.';
    String oSAPILevel = 'Failed to get OS API level';
    String device = 'Failed to get Device';
    String model = 'Failed to get model';
    String release = 'Failed to get release';
    String product = 'Failed to get product';
    String brand = 'Failed to get brand';
    String display = 'Failed to get display';
    String cpu_abi = 'Failed to get cpu_abi';
    String cpu_abi2 = 'Failed to get cpu_abi2';
    String hardware = 'Failed to get hardware';
    String manufucturer = 'Failed to get manufucturer';
    String serial = 'Failed to get serial';
    String user = 'Failed to get user';
    String host = 'Failed to get host';

    try {
      platformVersion = await _devicespecPlugin.getPlatformVersion() ??
          'Unknown platform version';
      oSAPILevel =
          await _devicespecPlugin.getOSAPILevel() ?? 'Unknown OS API Level';
      device = await _devicespecPlugin.getDevice() ?? 'Unknown device';
      model = await _devicespecPlugin.getModel() ?? 'Unknown model';
      product = await _devicespecPlugin.getProduct() ?? 'Unknown product';
      release = await _devicespecPlugin.getRelease() ?? 'Unknown release';
      brand = await _devicespecPlugin.getBrand() ?? 'Unknown brand';
      display = await _devicespecPlugin.getDisplay() ?? 'Unknown display';
      cpu_abi = await _devicespecPlugin.getCPU_ABI() ?? 'Unknown CPU_ABI';
      cpu_abi2 = await _devicespecPlugin.getCPU_AB2() ?? 'Unknown CPU_ABI2';
      hardware = await _devicespecPlugin.getHardware() ?? 'Unknow hardware';
      manufucturer =
          await _devicespecPlugin.getManufacturer() ?? 'Unknow Manufacturer';
      serial = await _devicespecPlugin.getSerial() ?? 'Unknown Serial';
      user = await _devicespecPlugin.getUser() ?? 'Unknown User';
      host = await _devicespecPlugin.getHost() ?? 'Unknown Host';
    } on PlatformException {}

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      _OSAPILevel = oSAPILevel;
      _device = device;
      _model = model + product;
      _release = release;
      _brand = brand;
      _display = display;
      _cpu_abi = cpu_abi;
      _cpu_abi2 = cpu_abi2;
      _hardware = hardware;
      _manufacturer = manufucturer;
      _serial = serial;
      _user = user;
      _host = host;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Plagin example app'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.storage_outlined),
              text: 'Memory',
            ),
            Tab(
              icon: Icon(Icons.android_outlined),
              text: 'Basics',
            ),
            Tab(
              icon: Icon(Icons.network_cell_outlined),
              text: 'Network',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: const Text("It's Memory info"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'OS Version:',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_platformVersion),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'OS API Level:',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_OSAPILevel),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Release: ',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_release),
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 2.0,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Device:',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_device),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Model (and Product): ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_model),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Brand: ',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_brand),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Display: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_display),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'CPU_ABI: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_cpu_abi),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'CPU_ABI2: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_cpu_abi2),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Hardware: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_hardware),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Manufacturer: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_manufacturer),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Serial: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_serial),
                      )
                    ],
                  ),
                ),
                const Divider( thickness: 2,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'User: ',
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(221, 56, 47, 47)),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_user),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      const Text(
                        'Host: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                        textScaleFactor: 1.2,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 180),
                        child: Text(_host),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text("It's Network info"),
          ),
        ],
      ),
    ));
  }
}
