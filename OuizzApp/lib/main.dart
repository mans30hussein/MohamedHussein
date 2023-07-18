import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';
import 'Screens/opening_screen.dart';
import 'Training/Training.dart';

void main() {
  runApp(
      const OurQuizzApp()); // runApp fnction takes the root Widget that we choose to start with
}

// root widget must have : MaterialApp(android) widget or CupertinoApp(IOS) widget
class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home:OpeningScreen(),
    );
  }
}




// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const ,
//     );
//   }
// }

////////// Flutter /////////////

// كل حاجة في فلاتر هي ودجت
// الودجتس نوعين
// 1- stateless widget
// مش محتاج اغير فيه بيانات زي : صفحة الشروط والاحكام : صفحة مش محتاج اغير فيها ستيت state
// اهم صفة في الستيتلس ودجت هي فانكشن ال build وهي ابستراكس فنكشن لازم انفذها

//  2- statefull widget
// بستخدمه في سكرينة بحتاج اغير فيها بيانات (ستيت state )
// زي : الكاونتر لما بدوس بلاس او ماينص (بيحصل تغير في الداتا اللي هي الستيت فبيحصل تغير في ال UI)

// build function :

// فانكشن جوة فلاتر، مسؤولة عن رسم ال UI
// it exists in both statefull and stateless widgets
// its an abstract function in both SSL & SSF



// scafold is a formating widget preffered te be the parent in any screen





// Responsive design
//  Responsive design: In Flutter, responsive design refers to creating user interfaces  (UI) that adapt and adjust their layout and appearance based on the screen size and device orientation. 
//  1- ميديا كويري اللي استخدمناها انهاردة هي اول تول (اداه) من ادوات ال ريسبونسيف ديزاين
// 2- Expanded & Flexble & spacer
// new tools of responsive design 
// Expanded : Takes the availble white space as huge as possible
// Flixble: takes its chile space only, otherwise using flex: 





// inkwell and gesture detector
// if you rapp any widget in flutter with any of these two, the widget will turn into a button
// both of them take a parameter called (on Tap)


// Buttons type in flutter
// Elevated button  -- raised button 
// Text button
// Icon Button
// outlined button  -- flat button 
// floating action button 
// material button   
// on press/ on tap : (){}



////////// OOP  ////////////

// Constructor: 
// - function with the same name of its class
// - هو اول حاجة بتحصل اول ما بنكلم الودجت / الاوبجكت
// نقدر من خلالها نباصي داتا من الودجت الاب إلي الودجت الابن
// one of the uses of the constructor is to pass data from parent widget to child widget




// 1- Inheritance
//  هو اني اورث صفات ودجت تاني
// الkeyword المسؤولة عن ال inheritance في لغة دارت هي
// Extends

// اهم صفه بورثها من ال stateless widget هي
// فانكشن ال build

// 2- Encapsulation

// 3- Abstraction
// A] Abstract class: class that can't be instantiated (مقدش اخد منها انستانت / نسخة), keyword: abstract
// B] Abstract function: Function without body,inside the abstract class , must be implemented in the inheriting class

// 4- Polymorphysm

//////////////   Dart   //////////////

// Dart is a super strongly typed language .     دي ميزة مش عيب

// سؤال انترفيو
//1- const
// must be   declerater and  intializedfrom the first
// any erron related to const listened in compile 

//2- final
// not essential to be intialized form the first time
// any erron related to final  listened in runtime 

// class aaa extends StatelessWidget {
//   aaa();

//   @override
//   Widget build(BuildContext context) {
//     const myNumbbb = 5;

  
//     final numberr;

//     numberr = 2;

//     numberr = 5;

//     return Container();
//   }

// //  numberr =3;
// }

// Data types
//int = العدد الصحيح
// double = العدد العشري
// string = النص ""
// bool = true, false
// null
// List []
// map

//

// Functions
// حاجة بنفذ الكود اللي جواها في وقت معين انا اللي بحددة
// syntacs : (){}

// int myNum = 2;
// var myNum2; // dynamic

// Clean code  (الالتزام ب ال type)
// افضل طريقة لكتابة الكلين كود هي قراية كلين كود

// كل ما تكتب كلين كود كل ما هتسهل ع اللي بعدك واللي معاك
// super higher performance
// no prbability for errors
// maintanble code

// int myFunction({required int firstInt, required int secInt}) {
//   var result = firstInt + secInt;
//   print("we are ITI");

//   return result;
// }

// var theReturn = myFunction(firstInt: 2, secInt: 6); // theReturn = 2.2

// function takes argument, that could be positional or named.
// function could return something
// void is nothing
//



// clean code
// clean Archticture