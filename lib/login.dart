import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:audioplayers/audioplayers.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  //final audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();

  void playmusic(int SoundNumber) {
    audioPlayer.play(AssetSource('images/note$SoundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    var _onChanged;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            backgroundColor: Colors.teal[400],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 0,
                    ),
                    Text(
                      'Sign Up & Save Lives',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                  ),
                  Image.asset(
                    'assets/images/blood-donation.png',
                    width: 70,
                    height: 70,
                  ),
                  Text(
                    'LifeBlood',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color.fromARGB(255, 6, 35, 59)),
                  ),
                  Text(
                    'Give Blood. Save Lives',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.teal),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: FormBuilder(
                    child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: FormBuilderTextField(
                            name: "Phone",
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'phone number',
                              hintText: 'Enter Your phone number',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: FormBuilderTextField(
                            name: "password",
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'password',
                              prefixIcon: Icon(Icons.remove_red_eye,
                                  color: Colors.teal),
                              hintText: 'Enter Your password',
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            playmusic(1);
                          },
                          child: Text('play Audio')),
                      TextButton(
                          onPressed: () {
                            playmusic(2);
                          },
                          child: Text('play Audio')),
                      TextButton(
                          onPressed: () {
                            playmusic(3);
                          },
                          child: Text('play Audio')),
                      TextButton(
                          onPressed: () {
                            playmusic(4);
                          },
                          child: Text('play Audio')),
                      TextButton(
                          onPressed: () {
                            playmusic(5);
                          },
                          child: Text('play Audio')),
                      TextButton(
                          onPressed: () {
                            playmusic(6);
                          },
                          child: Text('play Audio')),
                      TextButton(
                          onPressed: () {
                            playmusic(7);
                          },
                          child: Text('play Audio')),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 185,
                  ),
                  Text(
                    'Forget password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.teal),
                  )
                ],
              ),
              Container(
                width: 260,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.teal[600],
                    borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text('')],
                ),
              )
            ],
          )),
        ));
  }

  Audio(String s) {}
}
