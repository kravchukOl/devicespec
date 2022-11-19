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

class _MyAppState extends State<MyApp>
with TickerProviderStateMixin {

  String _platformVersion = 'Unknown';
  final _devicespecPlugin = Devicespec();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    
    try {
      platformVersion =
          await _devicespecPlugin.getDevice() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
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
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    )
    );
  }
}
