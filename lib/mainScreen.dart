import 'package:flutter/material.dart';

import 'OptionalPage.dart';
import 'homeScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.indigoAccent, Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: InkWell(
          onTap: () {


            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Option()
            ));
          },
          child: const Column(
            children: [
              SizedBox(height: 90),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Welcome to quizz app",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 300,
                height: 200,
                child: Image(image: AssetImage("assets/unnamed.png")),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Tap anywere to continue",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
