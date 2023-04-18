import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


class SignupApp extends StatefulWidget {
  const SignupApp({super.key});

  @override
  State<SignupApp> createState() => _SignupAppState();
}

class _SignupAppState extends State<SignupApp> {
   bool valuefirst = false;
  bool valuesecond = false;

  final List<String> items = [
    'Teenager',
    'Young Adult',
    'Adult',
    'Middle Age',
    'Old Age',
  ];

  final List<String> gender = [
    'Male',
    'Female',
  ];
  final List<String> ethnic = [
    'Temne',
    'Mende',
    'Limba',
    'Loko',
    'Fullah',
    'Gambia',
    'Krio',
    'Mandingo',
    'Madinka',
    'oku',
    'Sherbro',
    'Kuranko',
    'Kono',
    'Susu',
    'Kissi',
    'Yalunka',
    'Vai',
    'Kru',
    'other',
  ];
  final List<String> residing = [
    'Bo',
    'Bombali',
    'Bonthe',
    'Falaba',
    'Kailahun',
    'Kambia',
    'Karene',
    'Kenema',
    'Koinadugu',
    'Kono',
    'Moyamba',
    'Port Loko',
    'Pujehun',
    'Tonkolili',
    'Western Rural',
    'Western Urban',
  ];

  final List<String> blood = [
    'Not Known',
    'A+',
    'A-',
    'AB+',
    'AB-',
    'B+',
    'B-',
    'O+',
    'O-',
  ];

  String? selectedValue;
  List? listt;
  final fnamecontroller = TextEditingController();
   final lastnamecontroller = TextEditingController();
   final bloodcontroller = TextEditingController();
  var getVal;
   
    

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
              child: Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 700,
                    ),
                    Text(
                      'Make A',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 2, 19, 47)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Difference Today !',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color.fromARGB(255, 2, 19, 47)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('You do not need to be a doctor to save a life, just'),
                    Text('donate blood'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Give Blood. Save Lives.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 176, 20, 9)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Personal Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Divider(
                      color: Colors.black,
                      height: 15,
                      
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: FormBuilder(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: FormBuilderTextField(
                              name: "Fname",
                              controller: fnamecontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'First Name',
                                hintText: 'Enter Your First Name',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.2,
                            child: FormBuilderTextField(
                              name: "Fname",
                              controller: lastnamecontroller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Last Name',
                                hintText: 'Enter Your Last Name',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text('Do you wish to use your Middle Name?')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: this.valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuefirst = value!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: this.valuesecond,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuesecond = value!;
                        });
                      },
                    ),
                  ],
                ),
                Container(
                  child: FormBuilder(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Container(
                          //   width: MediaQuery.of(context).size.width / 2.2,
                          //   child: FormBuilderTextField(
                          //     name: "Fname",
                          //     decoration: InputDecoration(
                          //       border: OutlineInputBorder(),
                          //       labelText: 'Last Name',
                          //       hintText: 'Enter Your Last Name',
                          //     ),
                          //   //   child:
                          //   //    FormBuilderDropdown<String>(
                          //   //   // autovalidate: true,
                          //   //   name: 'gender',

                          //   //   items: items
                          //   //       .map((gender) => DropdownMenuItem(
                          //   //             alignment: AlignmentDirectional.center,
                          //   //             value: gender,
                          //   //             child: Text(gender),
                          //   //           ))
                          //   //       .toList(),
                          //   //   onChanged: (val) {
                          //   //     print(val);
                          //   //   },
                          //   //   valueTransformer: (val) => val?.toString(),
                          //   // ),

                          //   ),
                          // ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.1,
                            child: FormBuilderDropdown<String>(
                              // autovalidate: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Age Category',
                                hintText: 'Select your age Category',
                              ),
                              name: 'gender',
                              items: items
                                  .map((gender) => DropdownMenuItem(
                                        alignment: AlignmentDirectional.center,
                                        value: gender,
                                        child: Text(gender),
                                      ))
                                  .toList(),
                              onChanged: (val) {
                                print(val);
                              },
                              valueTransformer: (val) => val?.toString(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Teenager below (below 18 years), Young Adults \n(18-25 years),  Adult (26-45 years), Middle Age \n(46-59 years),  Old Age (more than 60 years).  ')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: FormBuilderDropdown<String>(
                    // autovalidate: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Gender',
                      hintText: 'Select your Gender',
                    ),
                    name: 'gender',
                    items: gender
                        .map((gender) => DropdownMenuItem(
                              alignment: AlignmentDirectional.center,
                              value: gender,
                              child: Text(gender),
                            ))
                        .toList(),
                    onChanged: (val) {
                      print(val);
                    },
                    valueTransformer: (val) => val?.toString(),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Divider(
                      color: Colors.teal,
                      height: 15,
                    ),
                  ],
                ),
                Container(
                  child: FormBuilder(
                      child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.1,
                            child: FormBuilderTextField(
                              name: "NIN Number",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'National Identification Number',
                                hintText: 'Enter Your NIN Number',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.1,
                            child: FormBuilderTextField(
                              name: "Email Address",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email Address',
                                hintText: 'Enter Your Email Addres',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.1,
                            child: FormBuilderTextField(
                              name: "Home Address",
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Home Address',
                                hintText: 'Enter Your Home Addres',
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
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: FormBuilderDropdown<String>(
                          // autovalidate: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Ethnic Group',
                            hintText: 'Select your Ethnic Group',
                          ),
                          name: 'ethnic',
                          items: ethnic
                              .map((ethnic) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: ethnic,
                                    child: Text(ethnic),
                                  ))
                              .toList(),
                          onChanged: (val) {
                            print(val);
                          },
                          valueTransformer: (val) => val?.toString(),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: FormBuilderDropdown<String>(
                          // autovalidate: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Residing District',
                            hintText: 'Select your Residing District',
                          ),
                          name: 'residing',
                          items: residing
                              .map((gender) => DropdownMenuItem(
                                    alignment: AlignmentDirectional.center,
                                    value: gender,
                                    child: Text(gender),
                                  ))
                              .toList(),
                          onChanged: (val) {
                            print(val);
                          },
                          valueTransformer: (val) => val?.toString(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blood Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Divider(
                      color: Colors.teal,
                      height: 15,
                      thickness: 1,
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: FormBuilderDropdown<String>(
                    // autovalidate: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Blood',
                      hintText: 'Select your Blood Group',
                    ),
                    name: 'blood',
                    //  controller: bloodcontroller,
                    items: blood
                        .map((blood) => DropdownMenuItem(
                              alignment: AlignmentDirectional.center,
                              value: blood,
                              child: Text(blood),
                            ))
                        .toList(),
                    onChanged: (val){
                      // print(val);
                      setState(() {
                        getVal = val;
                      });
                    },
                    valueTransformer: (val) => val?.toString(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Have You Donated Before')],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                        Text('Yes')
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                        Text('No')
                      ],
                    ),
                  ],
                ),
                Container(
                    child: FormBuilderDateRangePicker(
                  name: 'date_range',
                  firstDate: DateTime(1970),
                  lastDate: DateTime(2030),
                  format: DateFormat('yyyy-MM-dd'),
                  onChanged: _onChanged,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date Range',
                    // helperText: 'Helper text',
                    hintText: 'Hint text',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        var _formKey;
                        _formKey.currentState!.fields['date_range']
                            ?.didChange(null);
                      },
                    ),
                  ),
                )),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Divider(
                      color: Colors.teal,
                      height: 15,
                      thickness: 1,
                    ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: FormBuilderTextField(
                              name: "Phone Number",
                              decoration: InputDecoration(
                                isDense: true,
                                prefixIcon: Text("+232"),
                                prefixIconConstraints:
                                    BoxConstraints(minWidth: 2, minHeight: 0),
                                border: OutlineInputBorder(),
                                 labelText: 'Phone Number',
                                // hintText: 'Enter Your Phone Number',
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: FormBuilderTextField(
                              name: "Create Password",
                              decoration: InputDecoration(
                                isDense: true,  
                                border: OutlineInputBorder(),
                                 labelText: 'Create Password',
                                 prefixIcon: Icon(Icons.remove_red_eye, color: Colors.teal),
                                // hintText: 'Enter Your Phone Number',
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: FormBuilderTextField(
                              name: "Confirm Password",
                              decoration: InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                 labelText: 'Confirm Password',
                                 prefixIcon: Icon(Icons.remove_red_eye, color: Colors.teal),
                                // hintText: 'Enter Your Phone Number',
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text('By clicking Agree & Sign Up, you agree to LifeBlood\'s ',
                    style: TextStyle(
                      fontSize: 13,
                    ),),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Terms of Reference, Privacy Policy.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.blue
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 295,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.teal[600],
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(15, 15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                  child: Text('Agree and Continue', style: TextStyle(fontSize: 15, color: Colors.white),),
                  onPressed: () => {
                     
                    print(fnamecontroller.text),
                    print(lastnamecontroller.text),
                    print(bloodcontroller.text),
                    listt = ['fname: ${fnamecontroller.text}', 'lname:${lastnamecontroller.text}',
                     'blood:${getVal}'].toList(),
                    print(listt)
                  },
                      
                    )
                  ],
                ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Have an account? Log in')
                  ],
                )
              ],
            ),
          )),
        ));
  }

  DateFormat(String s) {}
}
