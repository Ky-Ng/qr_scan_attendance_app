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
        leading: Padding(
          padding: EdgeInsets.fromLTRB(5.0, 3.0, 0, 2.0),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              'lib/assets/LKF_logo_nowords.png',
            ),
          ),
        ),
        title: Text(
          'Scan Student',
          style: DefaultStyle.textStyle,
        ),
        centerTitle: true,
        backgroundColor: DefaultStyle.darkGrey,
      ),
      body: Center(
        child: Text('centered'),
      ),
    );
  }
}
