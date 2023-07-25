import 'package:flutter/material.dart';
import 'package:todo_app/screens/splashscreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
primarySwatch: Colors.deepPurple
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}
