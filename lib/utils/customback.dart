import 'package:flutter/material.dart';
import 'package:ratecourse/utils/roundedbutton.dart';
import 'package:ratecourse/utils/routes.dart';

class CustomBack extends StatelessWidget {
  const CustomBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedButton(
          bgColor: Colors.blueGrey,
          icon: Icon(Icons.arrow_back),
          iconColor: Colors.deepOrange.shade200,
          tap: () {
            Navigator.of(context).pushNamed(MyRoutes.loginRoute);
          },
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "Go back",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        )
      ],
    );
  }
}
