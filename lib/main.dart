import 'package:flutter/material.dart';
import 'package:legendkungfu/pages/home.dart';
import 'package:legendkungfu/pages/outstanding_students.dart';
import 'package:legendkungfu/pages/scanning/scan_success.dart';
import 'package:legendkungfu/pages/student/student_card.dart';
import 'package:legendkungfu/pages/student_dashboard.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/students': (context) => StudentInfo(),
      '/scannedIn': (context) => ScanStatus(),
      '/studentSingle': (context) => StudentCard(),
      '/outstanding': (context) => OutstandingStudents(),
    },
  ));
}
