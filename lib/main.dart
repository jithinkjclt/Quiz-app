import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';
import 'mainScreen.dart';

void main(){
  runApp(quizz());
}
class quizz extends StatelessWidget {
  const quizz({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MainScreen() ,
    );
  }
}
