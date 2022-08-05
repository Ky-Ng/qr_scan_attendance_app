import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legendkungfu/pages/student/student_data.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../assets/default_style.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({Key? key}) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  int studentIndex = 0;

  @override
  void initState() {
    for (int i = 0; i < StudentData.studentList.length; i++) {
      if (StudentData.studentList[i].uid == StudentData.currentUID) {
        studentIndex = i;
      }
    }
    print('re init state');
    super.initState();
  }

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
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey[200]),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Name: ',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            StudentData.studentList[studentIndex].name,
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Classes Left: ',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            '${StudentData.studentList[studentIndex].classes}',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.grey[800],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Date End: ',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            '${StudentData.studentList[studentIndex].date}',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.grey[800],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Phone: ',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            '${StudentData.studentList[studentIndex].phone}',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[800],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Email: ',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          Text(
                            '${StudentData.studentList[studentIndex].email}',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  flex: 3,
                  child: QrImage(
                    data: StudentData.studentList[studentIndex].uid,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
