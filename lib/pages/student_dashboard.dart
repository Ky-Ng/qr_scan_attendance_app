import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legendkungfu/pages/student/student_data.dart';

import '../assets/default_style.dart';
import 'navigation/nav_drawer.dart';

class StudentInfo extends StatefulWidget {
  const StudentInfo({Key? key}) : super(key: key);

  @override
  State<StudentInfo> createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Student Info',
          style: DefaultStyle.textStyle,
        ),
        centerTitle: true,
        backgroundColor: DefaultStyle.darkGrey,
      ),
      drawer: NavDrawer(),
      body: ListView(
        children: StudentData.studentList
            .map((studentData) => Card(
                  color: studentData.isOutStanding
                      ? Colors.red[200]
                      : Colors.white,
                  child: ListTile(
                    // leading: FlutterLogo(size: 72.0),
                    title: Text('${studentData.name}'),
                    subtitle: Text(
                        'Classes Left: ${studentData.classes}\nExpiration Date: ${studentData.date}'),
                    trailing: IconButton(
                      icon: Icon(Icons.open_in_new),
                      onPressed: () {
                        StudentData.currentUID = studentData.uid;
                        Navigator.pushNamed(context, '/studentSingle');
                      },
                    ),
                    isThreeLine: true,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
