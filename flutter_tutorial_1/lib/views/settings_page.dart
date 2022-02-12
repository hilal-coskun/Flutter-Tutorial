import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool isSwitched = false;
  bool isVoice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 243, 241, 241),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 91, 169, 238),
        title: const Text(
          'Settings', 
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notification'),
                  Switch(value: isSwitched, onChanged: (bool value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Voice'),
                  Switch(value: isVoice, onChanged: (bool value) { 
                    setState(() {
                      isVoice = value;
                    });
                  },),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}