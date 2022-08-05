import 'package:flutter/cupertino.dart';
import 'package:legendkungfu/pages/student/student_card.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({Key? key}) : super(key: key);

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  @override
  Widget build(BuildContext context) {
    return StudentCard();
  }
}
