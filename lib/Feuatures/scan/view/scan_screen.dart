import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String scannedData = '';
  MobileScannerController controller = MobileScannerController();

  void scanAgain() {
    controller.start();
    setState(() {
      scannedData = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR Scanner')),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                MobileScanner(
                  controller: controller,
                  onDetect: (capture) {
                    final List<Barcode> barcodes = capture.barcodes;
                    if (barcodes.isNotEmpty) {
                      setState(() {
                        scannedData = barcodes.first.rawValue ?? 'No Data';
                        controller.stop();
                      });
                    }
                  },
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 4),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.black87,
            width: double.infinity,
            child: Text(
              scannedData.isNotEmpty ? scannedData : 'Scan a QR code',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: Icon(Icons.qr_code_scanner, size: 40),
            onPressed: scanAgain,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
