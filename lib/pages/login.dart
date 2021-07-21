import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    labelText: "Email",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Login")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
