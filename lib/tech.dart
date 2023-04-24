import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key, required this.Fname});
   String? Fname;

  @override
  Widget build(BuildContext context) {
    
     
    void getName(){
    print(Fname);

   }
   getName();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Fname!),

        ),
        body: Column(
          children: [
            Text("Welcome $Fname?? "),
          ],
        ),
      ),
    );
  }
}