import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:ratecourse/courselists/coursecat.dart';
import 'package:ratecourse/widgets/course_widget.dart';

class CourseData extends StatefulWidget {
  const CourseData({Key? key}) : super(key: key);

  @override
  _CourseDataState createState() => _CourseDataState();
}

class _CourseDataState extends State<CourseData> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final courseJson = await rootBundle.loadString("assets/files/course.json");
    final decodedData = jsonDecode(courseJson);
    var coursesData = decodedData["courses"];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CourseModel.courselist.length,
          itemBuilder: (context, index) {
            return CourseWidget(
              courselist: CourseModel.courselist[index],
            );
          },
        ),
      ),
      // child: Column(
      //   children: [
      //     Container(
      //       color: Colors.deepOrange.shade200,
      //       child: Text(
      //         "College name",
      //         style: TextStyle(
      //           fontSize: 28,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //     Card(
      //       child: Container(child: Text("Course name")),
      //     ),
      //   ],
      // ),
    );
  }
}
