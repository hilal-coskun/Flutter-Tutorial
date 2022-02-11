import 'package:flutter/material.dart';
import 'package:flutter_tutorial_1/views/launch_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordControllerAgain = TextEditingController();

  //for password visible
  bool isVisible = false;

  //for gender
  bool woman = false;
  bool man = false;

  //for dropdown 
  final int _value = 1;
  var cities = ['Ankara', 'Istanbul', 'Izmir', 'Antalya'];

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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0, right: 20, top:100
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
                      left: 20.0, right: 20, top:30, bottom: 50
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
                          controller: nameController,
                          cursorColor: Colors.blue[900],
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 78, 70, 70),
                            ),
                            hintText: 'Name - Surname',
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
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: passwordControllerAgain,
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
                            hintText: 'Password Again',
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [ 
                            Expanded(
                              child: CheckboxListTile(
                                activeColor: Colors.black,
                                title: const Text('Kadın'),
                                value: woman, 
                                controlAffinity: ListTileControlAffinity.leading,
                                onChanged: (newValue) {
                                  setState(() {
                                    woman = newValue!;
                                  });
                                }
                              ),
                            ),
                            Expanded(
                              child: CheckboxListTile(
                                activeColor: Colors.black,
                                title: const Text('Erkek'),
                                value: man, 
                                controlAffinity: ListTileControlAffinity.leading,
                                onChanged: (newValue) {
                                  setState(() {
                                    man = newValue!;
                                  });
                                }
                              ),
                            )
                          ],
                        ),
                        Center(
                          child: Container(
                            child: DropdownButton(
                              onChanged: (value){

                              },
                              value: _value,
                              hint: const Text('City'),
                              items:const [
                                DropdownMenuItem(child: Text('Ankara'), value: 1,),
                                DropdownMenuItem(child: Text('Izmir'), value: 2,),
                                DropdownMenuItem(child: Text('Antalya'), value: 3,)
                              ],
                            ), 
                          )
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => const LaunchPage()));
                  },
                  child: const Text('Register'),
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