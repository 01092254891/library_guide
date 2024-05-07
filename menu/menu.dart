import 'package:flutter/material.dart';
import 'package:my_gradution_project/menu/about_developer.dart';
import 'package:my_gradution_project/menu/setting.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Developer()));
                },
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    "about developer")),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Setting()));
                },
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    "about you")),
          ],
        ),
      ),
    );
  }
}
