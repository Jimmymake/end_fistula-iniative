import 'dart:async';
import 'package:end_fistula_iniative/screens/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:random_string/random_string.dart';
// import 'package:eyro_toast/eyro_toast.dart';

import 'package:end_fistula_iniative/utillities/databasefictions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';

class mother_regester extends StatefulWidget {
  mother_regester({super.key});

  @override
  State<mother_regester> createState() => _mother_regesterState();
}

class _mother_regesterState extends State<mother_regester> {
  TextEditingController firstnamecontoller = TextEditingController();
  TextEditingController secondnamecontroller = TextEditingController();
  TextEditingController idnumbercontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController datecontoller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  String firstname = "";
  String secondname = "";
  String idnumber = "";
  String age = "";
  String phonenumber = "";
  String firstdate = "";

  motherregesterfuc() async {
    try {
      String collectionname = "motherinfor";
      String docid = randomAlphaNumeric(10);

      Map<String, dynamic> motherinfor = {
        "firstname": firstnamecontoller.text,
        "secondname": secondnamecontroller.text,
        "idnumber": idnumbercontroller.text,
        "age": agecontroller.text,
        "phonenumber": phonenumbercontroller.text,
        "firstdate": datecontoller.text,
      };
   
      await databasefuctions()
          .regestermother(motherinfor, docid, collectionname);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 1),
          backgroundColor: Colors.green,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Text("Details send succesfully")));
    } on FirebaseException catch (err) {
      if (err.code == "unknown") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(seconds: 1),
            backgroundColor: Colors.red,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Text("unable to connect")));
      } else {
        print("error: ${err}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ThemeData.dark().scaffoldBackgroundColor,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          constraints: const BoxConstraints(minWidth: 300, maxWidth: 660),
          decoration: const BoxDecoration(color: Colors.white),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("PREGNACY TRACKING FORM",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "FirstName",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        controller: firstnamecontoller,
                        validator: (firstname) {
                          if (firstname == null || firstname.isEmpty) {
                            return "please Enter firstname";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.datetime,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter Firstname",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "SecondName",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        controller: secondnamecontroller,
                        validator: (secondname) {
                          if (secondname == null || secondname.isEmpty) {
                            return "please Enter secondname";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.datetime,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter SecondName",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "ID Number",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        controller: idnumbercontroller,
                        validator: (idnumber) {
                          if (idnumber == null || idnumber.isEmpty) {
                            return "please Enter idnumber";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.datetime,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter ID Number",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "Age",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        controller: agecontroller,
                        validator: (age) {
                          if (age == null || age.isEmpty) {
                            return "please Enter age";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.datetime,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter Age",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "PhoneNumber",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        controller: phonenumbercontroller,
                        validator: (phonenumber) {
                          if (phonenumber == null || phonenumber.isEmpty) {
                            return "please Enter phonenumber";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.datetime,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter PhoneNUmber",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "First Date of tracking",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        controller: datecontoller,
                        validator: (date) {
                          if (date == null || date.isEmpty) {
                            return "please Enter date";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.datetime,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter Date",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              motherregesterfuc();
                              firstname = firstnamecontoller.text;
                              secondname = secondnamecontroller.text;
                              idnumber = idnumbercontroller.text;
                              age = agecontroller.text;
                              phonenumber = phonenumbercontroller.text;
                              firstdate = datecontoller.text;
                            });

                            firstnamecontoller.clear();
                            secondnamecontroller.clear();
                            idnumbercontroller.clear();
                            agecontroller.clear();
                            phonenumbercontroller.clear();
                            datecontoller.clear();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.grey,
                            fixedSize: Size(
                              screenWidth * 0.4,
                              70,
                            )),
                        child: Text("Submit",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
