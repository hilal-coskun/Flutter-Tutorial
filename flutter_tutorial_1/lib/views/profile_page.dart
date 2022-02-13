import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 227, 232, 238),
            height: size.height,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 30, 49),
                borderRadius: BorderRadius.only(
                topLeft : Radius.circular(30),
                topRight: Radius.circular(30)
              )),
              height: size.height * .74,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: size.height * .06,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * .2),
            child: const Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 140,
                child: AutoSizeText(
                  'Hilal Coşkun',
                  style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold, 
                    color: Color.fromARGB(255, 236, 230, 230)),
                  maxLines: 2,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * .25),
            child: Align(
              alignment: Alignment.topCenter,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: (){
                        print('maile tıklandı');
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Color.fromARGB(255, 145, 178, 211), borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.email),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .1,
                    ),
                    InkWell(
                      onTap: (){
                        print('telefona tıklandı');
                      },
                      child: Container(
                        decoration: BoxDecoration(color: Color.fromARGB(255, 145, 178, 211), borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.phone),
                        ),
                      ),
                    )
                  ]),
            ),
          )
        ],
      )
    );
  }
}