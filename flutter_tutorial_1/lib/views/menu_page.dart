import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/views/favorite_page.dart';
import 'package:flutter_tutorial_1/views/home_page.dart';
import 'package:flutter_tutorial_1/views/profile_page.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
      print('index: $_selectedIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 91, 169, 238),
        title: const Text(
          'Travel App', 
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),

      bottomNavigationBar:  BottomNavigationBar(
        items: const  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star), 
            label: 'Favoriler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profil',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),


      body: 
        _selectedIndex == 0 ? HomePage() 
        :_selectedIndex == 1 ? FavoritePage() 
        : ProfilePage()
      );
  }
}