import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQR extends StatelessWidget {
  const ScanQR({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Scan QR Code',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red, // Red theme for the app bar
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/generate_qr_code');
            },
            icon: const Icon(
              Icons.qr_code_2_rounded,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: MobileScanner(
              controller: MobileScannerController(
                detectionSpeed: DetectionSpeed.noDuplicates,
                returnImage: true,
              ),
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                final Uint8List? image = capture.image;
                for (final barcode in barcodes) {
                  print('Barcode Found! ${barcode.rawValue}');
                }
                if (image != null) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          barcodes.first.rawValue ?? "",
                        ),
                        content: Image.memory(image),
                      );
                    },
                  );
                }
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add functionality for additional button
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Red theme for the button
            ),
            child: Text(
              'Another Action',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          // Add more buttons or widgets as needed
        ],
      ),
    );
  }
}
