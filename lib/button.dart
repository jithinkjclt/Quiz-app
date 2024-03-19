import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text});
final String  text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.blue,
          boxShadow: const [],
          border: Border.all(color: Colors.black38, width: .5)),
      child:  Center(
          child: Text(
        text,
        style: const TextStyle(fontSize: 14, color: Colors.white),
      )),
    );
  }
}
