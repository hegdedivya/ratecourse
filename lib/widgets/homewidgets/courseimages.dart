import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CourseImage extends StatelessWidget {
  //final String image;
  //const CourseImage({Key? key, required this.image}) : super(key: key);
  const CourseImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    return Image.network(
      image,
    ).box.rounded.p8.color(Colors.deepOrange.shade100).make().p16().w40(context)
    */
    return Image.asset("assets/images/search.png")
        .box
        .rounded
        .p8
        .color(Colors.deepOrange.shade100)
        .make()
        .p16()
        .w32(context);
  }
}
