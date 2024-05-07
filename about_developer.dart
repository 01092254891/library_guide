import 'package:flutter/material.dart';

import '../home_page.dart';

class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            icon: Icon(Icons.keyboard_double_arrow_left)),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          child: Column(
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
                "Mahmoud Salama Mahmoud Belal",
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  " Mobil app developer"),
              Spacer(
                flex: 1,
              ),
              Text(
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  "MyEmail: hoda78399@gmail.com"),
              Spacer(
                flex: 1,
              ),
              Text(
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  "01092254891"),
              Spacer(
                flex: 1,
              ),
              Text(
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                  "The app and project are completed\n 24/4/2024"),
              Spacer(
                flex: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
