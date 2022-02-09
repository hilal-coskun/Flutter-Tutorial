import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/views/menu_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isVisible = false;

  

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

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

      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0, right: 20, top:150
        ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    //border: Border.all(),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(0.07), 
                      blurRadius: 37,
                      offset: const Offset(0, 3),
                    )],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top:50, bottom: 50
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: emailController,
                          cursorColor: Colors.blue[900],
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Color.fromARGB(255, 78, 70, 70),
                            ),
                            hintText: 'Email',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: passwordController,
                          obscureText: isVisible ? true : false,
                          cursorColor: Colors.blue[900],
                          decoration: InputDecoration(
                            //İkonlara tıklama modu oluşturur
                            suffixIcon: InkWell(
                              onTap: (){
                                if(isVisible){
                                  setState(() {
                                    isVisible = false;
                                  });
                                  print(isVisible);
                                }
                                else{
                                  setState(() {
                                    isVisible = false;
                                  });
                                  isVisible = true;
                                  print(isVisible);
                                }
                              },
                              child: isVisible 
                                ? const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black,
                                )
                                : const Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.black,
                                ),
                                
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 78, 70, 70),
                            ),
                            hintText: 'Password',
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => MenuPage()));
                  },
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 149, 189, 221),
                    )
                )
              ],
            ),
          ),
        ),
      );
  }
}