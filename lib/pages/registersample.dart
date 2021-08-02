import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:ratecourse/utils/customback.dart';
import 'package:ratecourse/utils/registerheader.dart';
import 'package:ratecourse/utils/routes.dart';

class RegisSample extends StatefulWidget {
  const RegisSample({Key? key}) : super(key: key);

  @override
  _RegisSampleState createState() => _RegisSampleState();
}

class _RegisSampleState extends State<RegisSample> {
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
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Stack(children: [
          RegisterHeader(),
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CustomBack(),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset("assets/images/search.png"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "REGISTER",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                        InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: 50,
                            width: changeButton ? 50 : 100,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.black,
                                  )
                                : Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                            decoration: BoxDecoration(
                              color: Colors.deepOrange.shade200,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 12),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SignInButton(Buttons.Google, onPressed: () {}),
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
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
