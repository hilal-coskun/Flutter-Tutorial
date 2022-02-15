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
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(251, 3, 32, 51),
                      Color.fromARGB(226, 81, 175, 226),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight 
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 10),
                      blurRadius: 20,
                      color: Color.fromARGB(153, 21, 92, 139),
                    )
                  ]
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 20,top: 25, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Next workout',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 245, 247, 248),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Legs Toning',
                        style: TextStyle(
                          fontSize: 23,
                          color: Color.fromARGB(255, 245, 247, 248),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'and Glutes Workout',
                        style: TextStyle(
                          fontSize: 23,
                          color: Color.fromARGB(255, 245, 247, 248),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.timer, size: 10, color: Color.fromARGB(255, 245, 247, 248),),
                              SizedBox(width:10,),
                              Text(
                              '60 min',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 245, 247, 248),
                              ),
                              ),
                              
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(251, 3, 32, 51),
                                  blurRadius: 10,
                                  offset: Offset(4, 8)
                                )
                              ]
                            ),
                            child: Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 60,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ),
          ]
          ),
        ),
      ),
    );
  }
}