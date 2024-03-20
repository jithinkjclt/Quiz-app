import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptContainer extends StatelessWidget {
   OptContainer({super.key, required this.url, required this.text, required this.color});
  final String url;
  final String text;
   final Color color;

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        SizedBox(
          width: 150,
          height: 180,
          child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                  url)),
        ),
        Text(
          text,
          style:  TextStyle(
              fontSize: 20,
              color: color,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
