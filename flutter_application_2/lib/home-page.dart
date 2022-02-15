import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 247, 248),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top:70, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Training",
                    style: TextStyle(
                      fontSize:30,
                      color: Color.fromARGB(255, 1, 18, 27),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Color.fromARGB(144, 1, 18, 27),
                  ),
                  const SizedBox(width: 10,),
                  const Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                    color: Color.fromARGB(255, 1, 18, 27),
                  ),
                  const SizedBox(width: 15,),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color.fromARGB(144, 1, 18, 27),
                  )
                ],
              ),
              const SizedBox(height: 40,),
              Row(
                children: [
                  const Text(
                    "Training",
                    style: TextStyle(
                      fontSize:20,
                      color: Color.fromARGB(190, 2, 38, 39),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(child: Container()),
                  const Text(
                    "Details",
                    style: TextStyle(
                      fontSize:20,
                      color: Color.fromARGB(255, 73, 151, 194),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 6,),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Color.fromARGB(255, 1, 18, 27),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 3, 32, 51),
                      Color.fromARGB(255, 81, 175, 226),
                    ]
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80),
                  )
                ),
              )
          ]),
        ),
      ),
    );
  }
}