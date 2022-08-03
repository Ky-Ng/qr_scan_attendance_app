import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legendkungfu/assets/default_style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Padding(
        //   padding: EdgeInsets.fromLTRB(5.0, 3.0, 0, 2.0),
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //     backgroundImage: AssetImage(
        //       'lib/assets/LKF_logo_nowords.png',
        //     ),
        //   ),
        // ),
        title: Text(
          'Scan Student',
          style: DefaultStyle.textStyle,
        ),
        centerTitle: true,
        backgroundColor: DefaultStyle.darkGrey,
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      )),
      // body: Column(children: [
      //   MobileScanner(
      //       allowDuplicates: false,
      //       onDetect: (barcode, args) {
      //         if (barcode.rawValue == null) {
      //           debugPrint('Failed to scan Barcode');
      //         } else {
      //           final String code = barcode.rawValue!;
      //           debugPrint('Barcode found! $code');
      //         }
      //       }),
      // ]));
      // body: MobileScanner(
      //     allowDuplicates: false,
      //     onDetect: (barcode, args) {
      //       if (barcode.rawValue == null) {
      //         debugPrint('Failed to scan Barcode');
      //       } else {
      //         final String code = barcode.rawValue!;
      //         debugPrint('Barcode found! $code');
      //       }
      //     })
    );
  }
}
