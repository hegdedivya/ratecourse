import 'package:flutter/material.dart';
import 'package:ratecourse/utils/routes.dart';
import 'package:ratecourse/widgets/drawer.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate My Course"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "What course are you looking for?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey,
              ),
            ),
            CollegePicker(),
            //CoursePicker(),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.courseRoute);
              },
              child: Container(
                height: 50,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Search",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      )

          /*
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                ),
                Text(
                  "What course are you looking for?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ), 
                SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "College",
                    hintText: "Enter course name",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.deepOrange.shade200,
                    labelText: "Course",
                    hintText: "Enter course name",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Search",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        */
          ),
      drawer: MyDrawer(),
    );
  }
}

class CollegePicker extends StatelessWidget {
  //const CollegePicker({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();

  static const college_list = [
    "Mangalore Institute of Technology, MITE",
    "Manipal Institute of Technology, MIT",
    "NMAM Institute of Technology, NMAMIT",
    "National Institute of Technology, NITK",
    "Sahyadri Institute of Technology",
    "Srinivas Institute of Technology",
    "St. Josheph's Engineering College",
  ];
  static const course_list = [
    "Artificial Intelligence",
    "Big Data",
    "Data Structures",
    "Design and Analysis of Algorithms",
    "Digital Systems and Design",
    "Machine Learning",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Form(
            key: _formKey,
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: TypeAheadFormField(
                suggestionsCallback: (pattern) => college_list.where(
                  (item) => item.toLowerCase().contains(pattern.toLowerCase()),
                ),
                itemBuilder: (_, String item) => ListTile(title: Text(item)),
                onSuggestionSelected: (String val) {
                  this._textEditingController.text = val;
                  print(val);
                  //Navigator.of(context).pushNamed(MyRoutes.courseRoute);
                },
                getImmediateSuggestions: false,
                hideSuggestionsOnKeyboardHide: false,
                hideOnEmpty: false,
                noItemsFoundBuilder: (context) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("No matches found"),
                ),
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(
                    hintText: "Enter college name",
                    border: OutlineInputBorder(),
                  ),
                  controller: this._textEditingController,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CoursePicker extends StatelessWidget {
  //const CollegePicker({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();
  static const course_list = [
    "Artificial Intelligence",
    "Big Data",
    "Data Structures",
    "Design and Analysis of Algorithms",
    "Digital Systems and Design",
    "Machine Learning",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: TypeAheadFormField(
                suggestionsCallback: (pattern) => course_list.where(
                  (item) => item.toLowerCase().contains(pattern.toLowerCase()),
                ),
                itemBuilder: (_, String item) => ListTile(title: Text(item)),
                onSuggestionSelected: (String val) {
                  this._textEditingController.text = val;
                  print(val);
                },
                getImmediateSuggestions: true,
                hideSuggestionsOnKeyboardHide: false,
                hideOnEmpty: false,
                noItemsFoundBuilder: (context) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("No matches found"),
                ),
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: InputDecoration(
                    hintText: "Enter course name",
                    border: OutlineInputBorder(),
                  ),
                  controller: this._textEditingController,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
