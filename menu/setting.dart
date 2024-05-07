import 'package:flutter/material.dart';

import '../home_page.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.keyboard_double_arrow_left)),
          backgroundColor: Colors.cyan,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Spacer(),
                Text(
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                    "The application is a library for the institute, divided into several sections, and each section contains a page inside which books can be added, saved, and deleted."),
                Spacer()
              ],
            ),
          ),
        ));
  }
}
