import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/views/login_page.dart';
import 'package:flutter_tutorial_1/views/register_page.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'TRAVEL APP', 
          style: TextStyle(color: Color.fromARGB(255, 23, 99, 167), fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20.0, left: 20.0, top: 50, bottom: 100,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //add image
              Image.asset(
                'assets/images/travel.jpg',
                height: size.height * .5,
                width: size.width * .9,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30
                ),
                child: Column(
                  //Butonlar sayfaya hizalandı
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  //Sayfa sonuna taşındı (Column içindeki tüm widgetları)
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[300],
                    ),
                    //Sayfalar arası butonla geçiş
                    onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const LoginPage())
                    );
                  },
                  child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
        
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[300],
                    ),
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                    print('Sign Up button');
                  },
                  
                  child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                  )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}