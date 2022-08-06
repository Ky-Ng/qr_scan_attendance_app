import 'package:flutter/material.dart';
import 'package:legendkungfu/assets/default_style.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: DefaultStyle.lightGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: DefaultStyle.darkGrey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Scan Me In',
                    style: TextStyle(
                      color: DefaultStyle.lightGrey,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.qr_code_scanner),
              title: Text('Scan'),
              onTap: () {
                print('pressed the Scanner Option');
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Students'),
              onTap: () {
                print('pressed the Students Option');
                Navigator.pushReplacementNamed(context, '/students');
              },
            ),
            ListTile(
              leading: Icon(Icons.error),
              title: Text('Outstanding'),
              onTap: () {
                print('pressed the Outstanding Option');
                Navigator.pushReplacementNamed(context, '/outstanding');
              },
            ),
            Center(
              child: CircleAvatar(
                minRadius: 90.0,
                maxRadius: 140.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  'lib/assets/imgs/LKF_logo.png',
                ),
              ),
            ),
          ],
        ));
  }
}
