import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ratecourse/courselists/coursecat.dart';
import 'package:ratecourse/utils/routes.dart';
import 'package:ratecourse/widgets/homewidgets/courselists.dart';
import 'package:velocity_x/velocity_x.dart';

class CourseReview extends StatelessWidget {
  final CourseName courselist;

  const CourseReview({Key? key, required this.courselist})
      : assert(courselist != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            Icon(
              Icons.star,
              color: Colors.deepOrange.shade200,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.reviewRoute);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.deepOrange.shade200),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "Write".text.make(),
            ).wh(100, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(courselist.id.toString()),
              child: Image.asset("assets/images/search.png"),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 10.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      courselist.coursename.text.xl4
                          .color(Colors.blueGrey)
                          .bold
                          .make(),
                      courselist.desc.text.color(Colors.grey).xl.make().p16(),
                      10.heightBox,
                      Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network(
                              "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png",
                              height: 50,
                              width: 50,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Divya Hegde",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Divya Hegde says this course\n is average at best",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ).p12(),
                            ),
                          ],
                        ).p12(),
                      ).p16().h20(context),
                      Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network(
                              "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png",
                              height: 50,
                              width: 50,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Divya Hegde",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Divya Hegde says this course\n is average at best",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ).p12(),
                            ),
                          ],
                        ).p12(),
                      ).p16().h20(context),
                      Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network(
                              "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png",
                              height: 50,
                              width: 50,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Divya Hegde",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Divya Hegde says this course\n is average at best",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ).p12(),
                            ),
                          ],
                        ).p12(),
                      ).p16().h20(context),
                    ],
                  ).py64(),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
