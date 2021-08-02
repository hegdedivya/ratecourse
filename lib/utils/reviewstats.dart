import 'package:flutter/material.dart';

class ReviewStats extends StatelessWidget {
  const ReviewStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReviewInfo(
          title: "Time",
          value: "15 min",
        ),
        ReviewInfo(
          title: "Price",
          value: "15 min",
        ),
        ReviewInfo(
          title: "Time",
          value: "15 min",
        ),
      ],
    );
  }
}

class ReviewInfo extends StatelessWidget {
  const ReviewInfo({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title + "\n",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: value,
            style: TextStyle(
              color: Colors.blueGrey.shade700,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
