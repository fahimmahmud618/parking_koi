import 'package:flutter/material.dart';
import 'package:qrcode/pages/generate.dart';
import 'package:qrcode/pages/scan.dart';

class QRCode extends StatefulWidget {
  const QRCode({super.key});

  @override
  State<QRCode> createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Parking Payment',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red, // Red theme for the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ScanQR()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Red theme for the button
              ),
              child: Text(
                'Scan QR Code',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => GenerateQR()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red, // Red theme for the button
              ),
              child: Text(
                'Generate QR Code',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
