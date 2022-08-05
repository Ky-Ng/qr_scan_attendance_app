import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:legendkungfu/assets/default_style.dart';
import 'package:legendkungfu/pages/student/student_data.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? returnedQrData;
  bool isValidQr = false;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  //ensure hot reload works on android app
  @override
  Future<void> reassemble() async {
    super.reassemble();
    if (Platform.isAndroid) {
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: QRView(
        key: qrKey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor:
              this.isValidQr ? DefaultStyle.greenGo : DefaultStyle.redStop,
          borderRadius: 10,
          borderLength: 50,
          borderWidth: 10,
          cutOutSize: MediaQuery.of(context).size.width * 0.8,
        ),
      ),
    );
  }

  // Widget buildQrView(BuildContext context) {
  //   return QRView(key: qrKey, onQRViewCreated: onQRViewCreated);
  // }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((barcode) {
      setState(() {
        this.returnedQrData = barcode;
        print('found data = ${returnedQrData!.code}');
        StudentData.currentUID = returnedQrData!.code!;
        Navigator.pushReplacementNamed(context, '/scannedIn');
      });
    });
  }
}
