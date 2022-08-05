import 'package:flutter/material.dart';
import 'package:legendkungfu/pages/dashboard.dart';
import 'package:legendkungfu/pages/home.dart';
import 'package:legendkungfu/pages/scanning/scan_status.dart';
import 'package:legendkungfu/pages/student/student_card.dart';
import 'package:legendkungfu/pages/student_info.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/students': (context) => StudentInfo(),
      '/dash': (context) => Dashboard(),
      '/scannedIn': (context) => ScanStatus(),
      '/studentSingle': (context) => StudentCard(),
    },
  ));
}
