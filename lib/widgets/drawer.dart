import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ratecourse/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_1280.png";
    return Drawer(
      child: Container(
        color: Colors.deepOrange.shade50,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("divya"),
                accountEmail: Text("divya@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.homeRoute);
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black87,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.homeRoute);
              },
              leading: Icon(
                CupertinoIcons.pencil_outline,
                color: Colors.black87,
              ),
              title: Text(
                "My Reviews",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(MyRoutes.loginRoute);
              },
              leading: Icon(
                CupertinoIcons.arrow_down_right_square_fill,
                color: Colors.black87,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
