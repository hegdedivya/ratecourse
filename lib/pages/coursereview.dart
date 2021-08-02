import 'package:flutter/material.dart';
import 'package:ratecourse/courselists/coursecat.dart';

class CourseReview extends StatelessWidget {
  final CourseName courselist;

  const CourseReview({Key? key, required this.courselist})
      : assert(courselist != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(courselist.coursename),
        ],
      ),
    );
  }
}
