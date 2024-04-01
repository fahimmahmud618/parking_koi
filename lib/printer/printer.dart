import 'dart:async';

import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; 
import 'package:bluetooth_print/bluetooth_print.dart';

class Printer extends StatefulWidget {
  // const Printer({super.key});

  final List<Map<String, dynamic>> data;
  Printer(this.data);
  

  @override
  State<Printer> createState() => _PrinterState();
}

class _PrinterState extends State<Printer> {

  BluetoothPrint bluetoothPrint = BluetoothPrint.instance;
  List<BluetoothPrint> _devices = [];
  String _devicesMsg = '';
  final f = NumberFormat('#,##0.00', 'en_US');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      initPrinter();
    });
  }

  Future<void> initPrinter() async {
    bluetoothPrint.startScan(timeout: Duration(seconds: 4));
    if(!mounted)  return;
    bluetoothPrint.scanResults.listen((val) { 
      if(!mounted) return;
      setState(()=>{_devices = val.cast<BluetoothPrint>()});
      if(_devices.isEmpty) {
        setState(() {
          _devicesMsg = 'No Devices';
        });
      }

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Printer'),
        backgroundColor: Colors.green,
      ),
      body: _devices.isEmpty 
      ? Center(child: Text(_devicesMsg ?? ''),
      )
      : ListView.builder(
        itemCount: _devices.length ,
        itemBuilder: (c,i){
          return ListTile(
            leading: Icon(Icons.print),
            title: Text(_devices[i].name),
            subtitle: Text(_devices[i].address),
            onTap: () async {
             
            },
          );
        })
    );
  }

  Future<void> _startPrint(BluetoothDevice device) async{
    if(device != null && device.address != null) {
      await bluetoothPrint.connect(device);
      // await bluetoothPrint.printText('Hello World');

      Map<String, dynamic> config = Map();
      List<LineText> list = [];

      list.add(
        LineText(
          type: LineText.TYPE_TEXT,
          content: 'Receipt',
          weight: 2,
          size: 2,
          height: 2,
          align: LineText.ALIGN_CENTER,
          linefeed: 2,
        ),
      );
  }
}

