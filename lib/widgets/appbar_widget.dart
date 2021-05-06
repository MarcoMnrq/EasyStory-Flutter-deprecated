import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easystory/screens/login_page.dart';

AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(
        color: Colors.black,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        }),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(icon, color: Colors.black),
        onPressed: () {},
      ),
    ],
  );
}
