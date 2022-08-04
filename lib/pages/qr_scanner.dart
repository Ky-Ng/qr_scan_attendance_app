// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';
//
// class QrScanner extends StatefulWidget {
//   const QrScanner({Key? key}) : super(key: key);
//
//   @override
//   State<QrScanner> createState() => _QrScannerState();
// }
//
// class _QrScannerState extends State<QrScanner> {
//   final qrKey = GlobalKey(debugLabel: 'QR');
//   QRViewController? controller;
//   Barcode? returnedQrData;
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
//
//   //ensure hot reload works on android app
//   @override
//   Future<void> reassemble() async {
//     super.reassemble();
//     if (Platform.isAndroid) {
//       await controller!.pauseCamera();
//     }
//     controller!.resumeCamera();
//   }
//
//   @override
//   Widget build(BuildContext context) => QRView(
//         key: qrKey,
//         onQRViewCreated: onQRViewCreated,
//         overlay: QrScannerOverlayShape(
//           borderRadius: 10,
//           borderLength: 20,
//           borderWidth: 10,
//           cutOutSize: MediaQuery.of(context).size.width * 0.8,
//         ),
//       );
//
//   // Widget buildQrView(BuildContext context) {
//   //   return QRView(key: qrKey, onQRViewCreated: onQRViewCreated);
//   // }
//
//   void onQRViewCreated(QRViewController controller) {
//     setState(() {
//       this.controller = controller;
//     });
//     controller.scannedDataStream.listen((barcode) {
//       setState(() {
//         this.returnedQrData = barcode;
//         print('found data = ${returnedQrData!.code}');
//       });
//     });
//   }
// }
