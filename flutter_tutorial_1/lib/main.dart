import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //not visible debug text
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //visible topbar
        appBar: AppBar(
          title: const Text('Flutter - Tutorial'),
          centerTitle: true,
          backgroundColor: Colors.pink.shade400,
        ), 
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Flutter');
          },
          child: const Icon(
            Icons.add
          ),
        ),
        body: Column(
          //Position box
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //%100 width
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Row and Container types
            /*
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.accessible, 
                  color: Colors.red,
                  size: 50,
                ),
                Icon(
                  Icons.access_alarm,
                  color: Colors.blue,
                  size: 50,
                ),
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.yellow,
                  size: 50,
                ),
                Icon(
                  Icons.add_call,
                  color: Colors.amber,
                  size: 50,
                ),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 100,
              width: 100,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Text('Flutter'),
                )
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('Flutter')
                ),
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
              child: const Center(
                child: Text('Flutter')
                ),
            )*/

            //button types
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login')
            ),
            const Text(
              'Hilal',
              style: TextStyle(
                color: Colors.amber, 
                fontSize: 30, 
                fontWeight: FontWeight.bold 
              ),
            ),

            //IMAGE
            //Your upload image and path
            //Image.asset('assets/images/flutterImage.jpg'),
            //Website url
            //Image.network('url')
          ],
        )),
    );
  }
}