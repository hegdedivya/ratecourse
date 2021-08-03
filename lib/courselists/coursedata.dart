import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:ratecourse/courselists/coursecat.dart';
import 'package:ratecourse/utils/routes.dart';
import 'package:ratecourse/widgets/homewidgets/courseheaders.dart';
import 'package:ratecourse/widgets/homewidgets/courselists.dart';
import 'package:velocity_x/velocity_x.dart';

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
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.reviewRoute);
          },
          child: Icon(CupertinoIcons.pencil_outline),
          backgroundColor: Colors.deepOrange.shade300,
        ),
        body: SafeArea(
          child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CourseHeader(),
                  if (CourseModel.courselist != null &&
                      CourseModel.courselist.isNotEmpty)
                    CourseList().py16().expand()
                  else
                    CircularProgressIndicator().centered().expand(),
                ],
              )),
        ));
  }
}

/*
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
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
            itemBuilder: (context, index) {
              final courselist = CourseModel.courselist[index];
              return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: GridTile(
                    header: Container(
                      child: Text(
                        courselist.coursename,
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.shade200,
                      ),
                    ),
                    child: Text(courselist.desc),
                    footer: Text(courselist.rating.toString()),
                  ));
            },
            itemCount: CourseModel.courselist.length,
          )),
    );
  }
}
return CourseWidget(
              courselist: CourseModel.courselist[index],
            );
*/
