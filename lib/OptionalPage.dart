import 'package:flutter/material.dart';
import 'OptionContainer.dart';
import 'homeScreen.dart';

class Option extends StatelessWidget {
  const Option({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(-1, 2),
              end: Alignment(-1, -5),
              colors: [
            Colors.brown,
            Colors.white,
            Colors.white,
            // Colors.limeAccent
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            " Awesome Quiz Application",
          ),
          backgroundColor: Colors.transparent,
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(optional: 0,)));
                  },
                  child: OptContainer(
                    url:
                        'https://media.istockphoto.com/id/542065210/vector/houseboat-on-kerala.jpg?s=612x612&w=0&k=20&c=wMhj8zsFQDRgz3UdiwdoMTLeVTvjPRNxM7Q3VpeL9G0=',
                    text: 'Kerala ',
                    color: Colors.green,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(optional: 1,)));
                  },
                  child: OptContainer(
                    color: Colors.blue,
                    text: "india ",
                    url:
                        "https://c8.alamy.com/comp/PY50B4/flag-of-india-vertical-flagisolated-on-a-white-background-PY50B4.jpg",
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(optional: 2,)));
                  },
                  child: OptContainer(
                    url:
                        'https://thumbs.dreamstime.com/b/sports-betting-concept-design-bookmaker-download-vertical-banner-sports-website-mobile-application-sports-betting-262944482.jpg',
                    text: 'sports ',
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(optional: 3,)));
                  },
                  child: OptContainer(
                    color: Colors.yellow,
                    text: "Birds ",
                    url:
                        "https://www.shutterstock.com/image-photo/greenwinged-macaw-ara-chloropterus-1-600nw-129934391.jpg",
                  ),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(optional: 4,)));
                  },
                  child: OptContainer(
                    url:
                        'https://media.istockphoto.com/id/140470565/photo/big-male-african-lion.jpg?s=612x612&w=0&k=20&c=DsuLvwrZmLbFvebc4t2kY8CtR5g2CP_dGAGmCUy-bgk=',
                    text: 'Animal ',
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(optional: 5,)));
                  },
                  child: OptContainer(
                    color: Colors.pinkAccent,
                    text: "Cars ",
                    url:
                        "https://img.freepik.com/premium-photo/aggressive-bright-sports-car-vertical-perspective-spring_449226-128.jpg",
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
// ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//     duration: Duration(seconds: 1),
//     backgroundColor: Colors.transparent,
//     content: SizedBox(
//         // width: 394,
//         height: 900,
//         child: Image(
//             image: AssetImage(
//                 "assets/products_01657180467.jpeg")))));
