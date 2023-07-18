import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Screens/questions_screen.dart';

import '../Global/global_data.dart';
import '../Shared/category_contained.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        CategoryContainer(
          testName: "Sport Test",
          containerColor: Colors.blue,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "Sport Test",
                        themeColor: Colors.blue,
                        questionsList: sportTest,
                      )),
            );
          },
        ),
        CategoryContainer(
          testName: "History Test",
          containerColor: Colors.red,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "History Test",
                        themeColor: Colors.red,
                        questionsList: historyTest,
                      )),
            );
          },
        ),
        CategoryContainer(
          testName: "General test",
          containerColor: Color.fromARGB(255, 13, 149, 97),
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "General test",
                        themeColor: Color.fromARGB(255, 13, 149, 97),
                        questionsList: generalTest,
                      )),
            );
          },
        ),
      ]),
    );
  }
}



// Cairly praces inside constructor means that i should type the parameter name   (Named Parameters)
// without Curly praced, no need for typing parameters name (Positional parameters)