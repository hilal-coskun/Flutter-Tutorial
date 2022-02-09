import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 91, 169, 238),
        title: const Text(
          'Travel App', 
          style: TextStyle(
            color: Colors.white
          ),
        ),
        
        centerTitle: true,
      ),

      body: Container(
        child: const Text('Hoş Geldiniz...'),
      ),
    );
  }
}