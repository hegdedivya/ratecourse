import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:ratecourse/courselists/coursecat.dart';
import 'package:ratecourse/pages/coursereview.dart';
import 'package:ratecourse/widgets/course_widget.dart';

class CourseData extends StatefulWidget {
  const CourseData({Key? key}) : super(key: key);

  @override
  _CourseDataState createState() => _CourseDataState();
}

class _CourseDataState extends State<CourseData> {
  get courselist => null;

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
    CourseModel.courselist = List.from(coursesData)
        .map<CourseName>((courselist) => CourseName.fromMap(courselist))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses Offered"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CourseModel.courselist.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseReview(
                    courselist: courselist,
                  ),
                ),
              ),
              child: CourseWidget(
                courselist: CourseModel.courselist[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
