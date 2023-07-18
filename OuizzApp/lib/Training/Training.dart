import 'package:flutter/material.dart';
import 'package:iti_quizz_app/Global/global_data.dart';

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  bool inTrainig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
                child: inTrainig == false
                    ?

                    /// ternary operator

                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            inTrainig = true;
                          });
                        },
                        child: Text("Lets train"))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Text("Today we will study state management"),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  inTrainig = false;
                                });
                              },
                              child: Text("Finish training"))
                        ],
                      )),
            for (int i = 0; i < trainingScreenTexts.length; i++)
              Text(trainingScreenTexts[i])
          ],
        ),
      ),
    );
  }
}







/// why state management
/// why not setState
///  differance between

////// Set State (the most basic tool for state management in flutter)

// 1- first problem when using set state is  we write login in UI
// 2- when you write SetState(){}, all the screen renders (the build function is called) // دي جريمة



/////  advanced state managment tools (Bloc & cubit - Revirpod - Getx - Mobx - Provider)
/// 1- Isolate Logic from UI
/// 2- Render just and just  what must be rendered
///  Cubit