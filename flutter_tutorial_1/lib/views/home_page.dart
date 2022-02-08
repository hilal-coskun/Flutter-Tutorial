import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gezi Rehberim', 
          style: TextStyle(color: Colors.black54)
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20.0, left: 20.0, top: 50, bottom: 100,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //add image
            Image.asset(
              'assets/images/background.jpg',
              height: size.height * .5,
              fit: BoxFit.cover,
            ),
            Column(
              //Butonlar sayfaya hizalandı
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //Sayfa sonuna taşındı (Column içindeki tüm widgetları)
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                print('Log in button');
              },
              child: const Text('Login', style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),)),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                print('Sign Up button');
              },
              
              child: const Text('Sign Up', style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),)
              )
              ],
            )
          ],
        ),
      ),
    );
  }
}