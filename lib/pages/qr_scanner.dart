import 'package:flutter/cupertino.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      QRView(key: qrKey, onQRViewCreated: onQRViewCreated);

  // Widget buildQrView(BuildContext context) {
  //   return QRView(key: qrKey, onQRViewCreated: onQRViewCreated);
  // }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
  }
}
