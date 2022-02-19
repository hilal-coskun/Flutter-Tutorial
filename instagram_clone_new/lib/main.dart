import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_new/responsive/mobile_screen_layout.dart';
import 'package:instagram_clone_new/responsive/responsive_layout_screen.dart';
import 'package:instagram_clone_new/responsive/web_screen_layout.dart';
import 'package:instagram_clone_new/screens/login_screen.dart';
import 'package:instagram_clone_new/utils/color.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDPaMDK2bRXb46I2Yh1iKho_6oZeDRwTxA", 
        appId: "1:987049129025:web:aa78b906bd4e73709402c0", 
        messagingSenderId: "987049129025", 
        projectId: "instagram-cln-b5bee",
        storageBucket: "instagram-cln-b5bee.appspot.com"
        )
    );
  } else{
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      //home: ResponsiveLayout(
      //  mobileScreenLayout: MobilScreenLayout(), 
      //  webScreenLayout: WebScreenLayout(),
      //),
      home: LoginScreen(),
    );
  }
}
