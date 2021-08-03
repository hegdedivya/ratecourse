import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Course List".text.xl5.bold.color(Colors.deepOrange.shade200).make(),
      ],
    );
  }
}
