import 'package:flutter/material.dart';
import 'package:ratecourse/utils/customback.dart';
import 'package:ratecourse/utils/registerheader.dart';
import 'package:ratecourse/utils/routes.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 100));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            RegisterHeader(),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: [
                    CustomBack(),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/images/search.png",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "REGISTER",
                      style: TextStyle(
                        color: Colors.deepOrange.shade300,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 32.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter email",
                                    labelText: "Email",
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email is required";
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    name = value;
                                    setState(() {});
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Enter password",
                                    labelText: "Password",
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Password is required";
                                    } else if (value.length < 8) {
                                      return "Password must have at least 8 characters";
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(MyRoutes.homeRoute);
                                    },
                                    child: Text("Sign Up")),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(MyRoutes.loginRoute);
                                  },
                                  child: Text(
                                    "Already have an account? Login!",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
