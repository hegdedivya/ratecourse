class CourseModel {
  static final courselist = [
    CourseName(
      id: 1,
      coursename: "Artificial Intelligence",
      rating: 3,
      desc:
          "Artificial intelligence is the simulation of human intelligence processes by machines, especially computer systems.",
    ),
  ];
}

class CourseName {
  final int id;
  final String coursename;
  final String desc;
  final double rating;
  CourseName({
    required this.id,
    required this.coursename,
    required this.rating,
    required this.desc,
  });
}
