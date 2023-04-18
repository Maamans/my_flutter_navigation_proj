import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key, required Fname});
   String? Fname;
   void getName(){
    print(Fname);

   }
  @override
  Widget build(BuildContext context) {
    // String? Fname;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('gjg'),
        ),
      ),
    );
  }
}