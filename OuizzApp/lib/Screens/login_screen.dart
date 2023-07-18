import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/category_screen.dart';

// final  vs const  vs var

TextEditingController userNameTextEditingControllrt =
    TextEditingController(); // global

// final String myNAme = "Mohamed";

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 44, 117, 46)),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 1 / 12,
                        left: 20,
                        right: 20,
                        top: MediaQuery.of(context).size.height * 1 / 12),
                    child: Image.asset(
                      "images/loginImage.png",
                      height: MediaQuery.of(context).size.width * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  )),
            ),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: MediaQuery.of(context).size.height * 2 / 3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 239, 236, 236),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50))),
              child: Form(
                key: _loginFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Username text field
                    TextFormField(
                      controller: userNameTextEditingControllrt,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username must not be empty";
                        } else if (value.length < 9) {
                          return "Username must be more than 9 chracters";
                        } else if (!value[0].contains(RegExp(r'[A-Z]'))) {
                          return "First Character in userName must be Uppercase ";
                        }
                        ;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Username",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),

                    // SizedBox(
                    //   height: 18,
                    // ),

                    // // Password text field
                    // TextField(
                    //   decoration: InputDecoration(
                    //     prefixIcon: Icon(Icons.lock),
                    //     suffixIcon: Icon(Icons.visibility_off),
                    //     hintText: "Password",
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        const Text("New to quizz app? "),

                        TextButton(
                            onPressed: () {}, child: const Text("Register"))

                        // GestureDetector(onTap: () {}, child: Text("Register"))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 15,
                                shadowColor: Colors.black,
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {
                              if (_loginFormKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen()),
                                );
                              }
                            },
                            child: const Text("Login"))),
                    const SizedBox(
                      height: 10,
                    ),
                    //

                    const Icon(
                      Icons.fingerprint,
                      size: 60,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      "Use Touch ID",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text("Remember me"),
                          ],
                        ),
                        // Expanded(child: SizedBox()),
                        // Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: const Text("Forget Password?")),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Positioned(
            //   bottom: MediaQuery.of(context).size.height * 0.75,
            //   left: 100,
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.red,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
