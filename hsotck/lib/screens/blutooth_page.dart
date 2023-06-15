import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothPage extends StatefulWidget {
  const BluetoothPage({super.key});

  @override
  _BluetoothPageState createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<BluetoothPage> {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<BluetoothDevice> devicesList = [];

  @override
  void initState() {
    super.initState();
    _startScanning();
  }

  void _startScanning() {
    flutterBlue.scanResults.listen((results) {
      setState(() {
        devicesList = results.map((r) => r.device).toList();
      });
    });
    flutterBlue.startScan();
  }

  void _stopScanning() {
    flutterBlue.stopScan();
  }

  @override
  void dispose() {
    _stopScanning();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bluetooth Page'),
      ),
      body: ListView.builder(
        itemCount: devicesList.length,
        itemBuilder: (context, index) {
          BluetoothDevice device = devicesList[index];
          return ListTile(
            title: Text(device.name),
            subtitle: Text(device.id.toString()),
            onTap: () {
              // 여기서 선택한 디바이스와의 연결 로직을 구현하세요.
            },
          );
        },
      ),
    );
  }
}
