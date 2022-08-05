import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentCard extends StatefulWidget {
  const StudentCard({Key? key}) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text('Card'),
    );
  }
}
