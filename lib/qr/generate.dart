import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateQR extends StatefulWidget {
  const GenerateQR({super.key});

  @override
  State<GenerateQR> createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {
  String? qrdata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Generate QR Code',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red, // Set red color theme for the app bar
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter the data to generate QR Code',
                        border: OutlineInputBorder(),
                        fillColor: Colors.white, // Set text field background color to white
                      ),
                      onChanged: (val) {
                        setState(() {
                          qrdata = val;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          qrdata = qrdata;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red, // Set button background color to red
                      ),
                      child: const Text('Generate QR Code'),
                    ),
                  ],
                ),
              ),
            ),
            if (qrdata != null)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'QR Code Preview:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red, // Set text color to red
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: PrettyQr(
                          data: qrdata!,
                          size: 200,
                          roundEdges: true,
                          elementColor: Colors.black,
                          typeNumber: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
