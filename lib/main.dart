import 'package:flutter/material.dart';
import 'package:lifeblood/signup.dart';
import 'package:lifeblood/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}




class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;


    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   toolbarHeight: 0,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
              ),
              Image.asset(
                "assets/images/blood-donation.png",
                width: 100,
                height: h*0.1,
              ),
              Text(
                'LifeBlood',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 18, 42, 79)),
              ),
              Text(
                'Give Blood Save Lives',
                style: TextStyle(color: Colors.green),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'An AutoHealth Products',
                style: TextStyle(fontSize: 18, color: Colors.red[400]),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/home1.png',
                width: 100,
                height: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'We aim to',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text('increase Voluntary'),
              Text('Nonremunerated Donors'),
              SizedBox(
                height: 30,
                width: 500,
              ),
              GestureDetector(
                onTap: () {
                  print("clicked");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupApp()),
                  );
                },
                child: Container(
                  width: 260,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.red[600],
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(20, 20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up & Save Lives',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            GestureDetector(
                 onTap: () {
                  print("clicked");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginApp()),
                  );
                },
                child: Container(
                  width: 260,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.teal[600],
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(20, 20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'our partners',
                style: TextStyle(),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            height: 15,
          ),
          SizedBox(
            height: 5,
          ),
          Row(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/concern.png',
                width: 50,
                height: 50,
              ),
              Image.asset(
                'assets/images/orange.png',
                width: 50,
                height: 50,
              ),
              Image.asset(
                'assets/images/mohs.png',
                width: 50,
                height: 50,
              ),
              Image.asset(
                'assets/images/nsbssl.png',
                width: 50,
                height: 50,
              )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
