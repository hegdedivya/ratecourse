class ListCourse {
  final String coursename;
  final String collegename;
  const ListCourse({
    required this.coursename,
    required this.collegename,
  });
}

List<ListCourse> loadCourseDataList() {
  var fi = <ListCourse>[
    ListCourse(
      coursename: "Artificial Intelligence",
      collegename: "NMAM Institute of Technology",
    ),
    ListCourse(
      coursename: "Machine Learning",
      collegename: "NMAM Institute of Technology",
    ),
    ListCourse(
      coursename: "Big Data",
      collegename: "NMAM Institute of Technology",
    ),
    ListCourse(
      coursename: "Data Structures",
      collegename: "NMAM Institute of Technology",
    ),
    ListCourse(
      coursename: "Digital Systems and Design",
      collegename: "NMAM Institute of Technology",
    ),
  ];
  return fi;
}
