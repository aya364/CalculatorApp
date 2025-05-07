import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task7/widgets/operation_btn.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int first = 0;
  int second = 0;
  num result = 0;
  String sign = "+";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFFFFDFD7),
        title: const Text(
          "Calculator",
          style: TextStyle(
              fontSize: 30,
              color: Color(0xFF757CAB),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color:const Color(0xFFF6F6F6),
              border: Border.all(color: const Color(0xFF757CAB), width: 10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 80,
                  decoration: BoxDecoration(
                    color:const Color(0XFFFFDFD7),
                    border: Border.all(color:const Color(0xFF757CAB), width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "$first",
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 81, 90, 149)),
                  ),
                ),
                Text(
                  "$sign",
                  style:const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 81, 90, 149)),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 80,
                  decoration: BoxDecoration(
                    color:const Color(0XFFFFDFD7),
                    border: Border.all(color:const Color(0xFF757CAB), width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "$second",
                    style:const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 81, 90, 149)),
                  ),
                ),
                const Text(
                  "=",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 81, 90, 149)),
                ),
                Container(
                  width: 70,
                  height: 80,
                  decoration: BoxDecoration(
                    color:const Color(0XFFFFDFD7),
                    border: Border.all(color:const Color(0xFF757CAB), width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "$result",
                        style:const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 81, 90, 149)),
                      )),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "The first number",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 81, 90, 149)),
              ),
              Text(
                "The second number",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 81, 90, 149)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  shape:const CircleBorder(),
                  onPressed: () {
                    first++;
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color(0xFFFFBCBD),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child:const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 81, 90, 149),
                          size: 40,
                        ),
                      )),
                ),
                MaterialButton(
                  shape:const CircleBorder(),
                  onPressed: () {
                    if (first > 0) {
                      first--;
                    } else {
                      first = 0;
                    }

                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color(0xFFFFBCBD),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.remove,
                          color: Color.fromARGB(255, 81, 90, 149),
                          size: 40,
                        ),
                      )),
                ),
                MaterialButton(
                  shape:const CircleBorder(),
                  onPressed: () {
                    second++;
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFFFBCBD),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child:const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 81, 90, 149),
                          size: 40,
                        ),
                      )),
                ),
                MaterialButton(
                  shape:const CircleBorder(),
                  onPressed: () {
                    if (second > 0) {
                      second--;
                    } else {
                      second = 0;
                    }
                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color:const Color(0xFFFFBCBD),
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child:const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.remove,
                          color: Color.fromARGB(255, 81, 90, 149),
                          size: 40,
                        ),
                      )),
                ),
              ],
            ),
          ),
          Container(
            margin:const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Operation(
                        txt: "+ Addition",
                        onPressed: () {
                          setState(() {
                            result = first + second;
                            sign = "+";
                          });
                        },
                        ),
                    Operation(
                        txt: "- Subtraction",
                        onPressed: () {
                          setState(() {
                            result = first - second;
                            sign = "-";
                          });
                        },
                        ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Operation(
                        txt: "* Multiplication",
                        onPressed: () {
                          setState(() {
                            result = first * second;
                            sign = "*";
                          });
                        },
                        ),
                    Operation(
                        txt: "/ Division",
                        onPressed: () {
                          setState(() {
                            if (second == 0) {
                              print("cannot divide by 0");
                            } else{
                              result = first / second;
                            sign = "/";
                            }
                          });
                        },
                        ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Operation(
                        txt: "^ Exponentiation",
                        onPressed: () {
                          setState(() {
                            result = first ^ second;
                            sign = "^";
                          });
                        },
                        ),
                    Operation(
                      txt: "% Modulus",
                      onPressed: () {
                        setState(() {
                          result = first % second;
                          sign = "%";
                        });
                      },
                      
                    ),
                  ],
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                first = 0;
                second = 0;
                result = 0;
              });
            },
            shape:const CircleBorder(),
            child:const CircleAvatar(
              radius: 70,
              backgroundColor: Color(0xFFFFBCBD),
              child: Text(
                "Reset all",
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 81, 90, 149),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
