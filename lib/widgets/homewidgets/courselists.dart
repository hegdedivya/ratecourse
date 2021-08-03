import 'package:flutter/material.dart';
import 'package:ratecourse/courselists/coursecat.dart';
import 'package:ratecourse/pages/coursereview.dart';
import 'package:ratecourse/utils/routes.dart';
import 'package:ratecourse/widgets/homewidgets/courseimages.dart';
import 'package:velocity_x/velocity_x.dart';

class CourseList extends StatelessWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CourseModel.courselist.length,
      itemBuilder: (context, index) {
        final courselist = CourseModel.courselist[index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CourseReview(
                            courselist: courselist,
                          )),
                ),
            child: CourseItem(courselist: courselist));
      },
    );
  }
}

class CourseItem extends StatelessWidget {
  final CourseName courselist;

  const CourseItem({Key? key, required this.courselist})
      : assert(courselist != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        //CourseImage(image: courselist.image)
        Hero(
          tag: Key(courselist.id.toString()),
          child: CourseImage(),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              courselist.coursename.text.lg.color(Colors.blueGrey).bold.make(),
              courselist.desc.text.color(Colors.grey).make(),
              10.heightBox,
              ButtonBar(
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
                  ),
                ],
              ).pOnly(right: 8.0)
            ],
          ),
        )
      ],
    )).white.rounded.square(150).make().py16();
  }
}
