import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> myList=[1,1.2,"",true,null];

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/235986/pexels-photo-23"
                          "5986.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            //I.Q: diff between S.between/ S.around/ Space evently
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,

            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.27,
              ),

              Image.asset(
                "images/quizLogo.png",
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.height * 0.2,
              ),
              // Image.network(
              //     "https://www.shutterstock.com/image-vector/quiz-check-speech-bubble-sign-260nw-281084969.jpg")
              Text("ITI Quiz App",
                  style: GoogleFonts.pacifico(
                    color: Colors.yellow,
                    fontSize: 30,
                  )

                  // TextStyle(
                  //     color: Colors.yellow,
                  //     fontSize: 25,
                  //     fontWeight: FontWeight.bold),
                  ),
              const SizedBox(
                height: 12,
              ),
              Text("We Are Creative, enjoy our App",
                  style: GoogleFonts.dancingScript(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 26,
                  )

                  //  TextStyle(
                  //   color: Color.fromARGB(255, 255, 255, 255),
                  //   fontSize: 20,
                  // ),
                  ),

              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.3,
              // ),

              Spacer(),

              //I.Q
              //diff between margin and padding:
              //1- margin: space between item and surrounddings
              //2- padding: space between itme and his child

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 28, horizontal: 26),
                // padding: EdgeInsets.all(20),

                child: ElevatedButton(
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all(Colors.green),
                    // ),
                    onPressed: () {
                      // print("hello iam omar")

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );

                      // Navigator.pushAndRemoveUntil(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LoginScreen()),
                      //   (route) => false,
                      // );
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
              ),

              // Checkbox(
              //   value: true,
              //   onChanged: (value) {},
              // ),
              // Radio(
              //   value: "groupValue",
              //   groupValue: "groupValue",
              //   onChanged: (value) {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
