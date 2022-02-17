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
                      color: Color(0xFF01121B),
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
              SizedBox(height: 5,),
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Stack(
                    children: [
                      /*Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(right: 200, bottom: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/yoga.png"
                            ),
                          )
                        )
                      ),
                      Container(
                        width: double.maxFinite,
                        height: 100,
                        margin: const EdgeInsets.only(left:150, top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You are doing great",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 73, 151, 194),
                              ),
                            ),
                            SizedBox(height: 10,),
                            RichText(
                              text: TextSpan(
                                text: "Keep it up \n",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 81, 87, 90),
                                  fontSize: 13,
                                ),
                                children: [
                                  TextSpan(
                                    text: "stick to your plan"
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ),*/
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Text(
                              "Area of foucs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 0, 17, 26),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 150,),
                      Expanded(child: ListView.builder(
                        itemBuilder: (_, i){
                          return Row(
                            children: [
                              Container(
                                width: 200,
                                height: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/card.jpg"
                                    )
                                  )
                                ),

                              )
                            ],
                          );
                        },
                      ))
                    ],
                  ),
                ),
              ),
          ]
          ),
        ),
      ),
    );
  }
}