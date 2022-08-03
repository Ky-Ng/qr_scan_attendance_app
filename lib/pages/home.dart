import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legendkungfu/assets/default_style.dart';
import 'package:legendkungfu/pages/navigation/nav_drawer.dart';

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
        title: Text(
          'Scan Student',
          style: DefaultStyle.textStyle,
        ),
        centerTitle: true,
        backgroundColor: DefaultStyle.darkGrey,
      ),
      drawer: NavDrawer(),
    );
  }
}
