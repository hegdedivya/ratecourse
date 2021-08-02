import 'package:flutter/material.dart';
import 'package:ratecourse/utils/custombackr.dart';
import 'package:ratecourse/utils/registerheader.dart';
import 'package:ratecourse/utils/reviewstats.dart';
import 'package:ratecourse/utils/routes.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';

class SubmitReview extends StatelessWidget {
  const SubmitReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            RegisterHeader(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0 * 2),
                child: Column(
                  children: [
                    CustomBackR(),
                    SizedBox(
                      height: 40,
                    ),
                    Image.network(
                      "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png",
                      height: 200,
                      width: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Got opinions on this course?",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Submit a review",
                      style: TextStyle(
                        color: Colors.deepOrange.shade300,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ReviewStats(),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "User",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      "Rate Your Course",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.deepOrange.shade300,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
