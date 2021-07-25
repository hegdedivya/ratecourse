import 'package:flutter/material.dart';
import 'package:ratecourse/courselists/coursecat.dart';

class CourseWidget extends StatelessWidget {
  final CourseName courselist;

  const CourseWidget({Key? key, required this.courselist})
      : assert(courselist != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Text(
        ("NMAMIT"),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        "Courses Offered",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
      ),
      SizedBox(
        height: 30,
      ),
      ListTile(
        leading: Image.network(
            "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png"),
        title: Text(
          courselist.coursename,
        ),
        subtitle: Text(
          courselist.desc,
        ),
        trailing: Icon(
          Icons.code,
          color: Colors.deepOrange.shade300,
        ),
        selectedTileColor: Colors.deepOrange.shade100,
        onTap: () {
          print("${courselist.coursename}");
        },
      ),
    ]);
  }
}
