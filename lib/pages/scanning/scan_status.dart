import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legendkungfu/assets/default_style.dart';
import 'package:legendkungfu/pages/scanning/scan_helper.dart';

import '../student/student_data.dart';

class ScanStatus extends StatefulWidget {
  const ScanStatus({Key? key}) : super(key: key);

  @override
  State<ScanStatus> createState() => _ScanStatusState();
}

class _ScanStatusState extends State<ScanStatus> {
  String placeHolderStudent = 'PLACEHOLDER NAME';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: DefaultStyle.lightGrey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        StudentData.currentUID,
                        style: TextStyle(fontSize: 30),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green[400],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: TextButton(
                        onPressed: () {
                          print('finished button pressed');
                          ScanHelper.justScanSuccess = false;
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                side: BorderSide(color: Colors.transparent)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green[400]),
                        ),
                        child: Text(
                          'Done',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    )),
              ]),
        ),
      ),
    );
  }
}
