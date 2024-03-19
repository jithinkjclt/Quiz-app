import 'package:flutter/material.dart';
import 'package:quizz/qustionBank.dart';
import 'button.dart';
import 'mainScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Data1 data1 = Data1();
  Data2 data2 = Data2();
  Data3 data3 = Data3();

  submit() {
    flag++;
    fla--;
    isClickable = true;
    selectedIndex = null;
    clr = Colors.white;
    if (flag == data1.quizQuestions.length) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {git add
          return AlertDialog(
            title:
                Text(" 🎉 🎉 🎉 🎉 🎉 🎉 🎉 🎉 🎉 🎉 🎉\nyour Score is $mark"),
            content: SizedBox(
              height: 100,
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ));
                      },
                      child: const Button(text: "Home")),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                      },
                      child: const Button(text: "Restart")),
                ],
              ),
            ),
          );
        },
      );
      flag = data1.quizQuestions.length - 1;
      fla = data1.quizQuestions.length;
    }
  }

  bool isClickable = true;
  int change = 0;
  int? selectedIndex;
  Color clr = Colors.white;

  selectedClick(int index) {
    selectedIndex = index;
    if (isClickable == true) {
      if (data1.quizQuestions[flag]["correctAnswerIndex"] == index) {
        clr = Colors.green;
        mark++;
      } else {
        clr = Colors.red;
      }
      setState(() {});
    }
    isClickable = false;
  }

  int? valueChe;

  valueCheck(int index) {
    setState(() {
      valueChe = index;
    });
  }

  int flag = 0;
  int mark = 0;
  int fla = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-1, 1),
                end: Alignment(-1, -1),
                colors: [
              Colors.limeAccent,
              Colors.white,
              Colors.white,
              Colors.limeAccent
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text(
              " Awesome Quiz Application",
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Divider(),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      data1.quizQuestions[flag]['question'],
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    height: 370,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              selectedClick(index);
                            },
                            child: Container(
                              height: 70,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: selectedIndex == index
                                      ? clr
                                      : Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurRadius: .5,
                                        offset: Offset(1, 1))
                                  ],
                                  border: Border.all(
                                      color: Colors.black, width: .2)),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(data1.quizQuestions[flag]['answers']
                                      [index])
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 25);
                        },
                        itemCount: 4)),
                const SizedBox(
                  height: 25,
                ),
                InkWell(
                    onTap: () {
                      setState(() {});
                      if (isClickable == false) {
                        submit();
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                duration: Duration(milliseconds: 350),
                                backgroundColor: Colors.red,
                                content: SizedBox(
                                    width: 200,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          " choose an option first",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ))));
                      }
                    },
                    child: const Button(
                      text: 'Next',
                    )),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 15),
                          Text("$mark"),
                          const Divider(),
                          Text("$fla")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ));
  }
}
