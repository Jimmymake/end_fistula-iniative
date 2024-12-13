import 'dart:ui';

import 'package:end_fistula_iniative/screens/dashboard.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String email = "";
  String password = "";

  signinUser() async {
    try {
      // await FirebaseAuth.instance
      //     .createUserWithEmailAndPassword(email: email, password: password);
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 1),
          backgroundColor: Colors.green,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Text("Signed in succesfully")));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return main_dashboard();
      }));
    } on FirebaseException catch (err) {
      if (err.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("email and password does not exst")));
      } else if (err.code == "user-disabled") {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Email and passoword diabled")));
      } else if (err.code == "wrong-password") {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Wrong password provided")));
      }
    }
  }

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.orange,
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.7,
                ),
                // Container(
                //     margin: const EdgeInsetsDirectional.only(top: 20),
                //     child: Image.asset("assets/icons/logo.png")),

                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text(
                        "Let's End Fistula Initiative",
                        style: textstyles.boldtextwhite(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Material(
                        elevation: 4,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.35,
                          // margin: EdgeInsets.only(top: 40 ),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                          ),
                          child: Form(
                            key: _formkey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Log In",
                                    style: textstyles.boldtextblack()),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  child: TextFormField(
                                    validator: (email) {
                                      if (email == null || email.isEmpty) {
                                        return "please enter email";
                                      }
                                      return null;
                                    },
                                    controller: emailcontroller,
                                    decoration: InputDecoration(
                                        prefixIcon:
                                            const Icon(Icons.email_outlined),
                                        hintText: "Email",
                                        hintStyle: textstyles.headlineblack()),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.65,
                                  child: TextFormField(
                                    validator: (password) {
                                      if (password == null ||
                                          password.isEmpty) {
                                        return "please enter password";
                                      }
                                      return null;
                                    },
                                    controller: passwordcontroller,
                                    decoration: InputDecoration(
                                        prefixIcon:
                                            const Icon(Icons.password_outlined),
                                        hintText: "Password",
                                        hintStyle: textstyles.headlineblack()),
                                  ),
                                ),
                                // GestureDetector(
                                //   onTap: () => Navigator.push(context,
                                //       MaterialPageRoute(builder: (context) {
                                //     return const forgotpassword();
                                //   })),
                                //   child: const Align(
                                //       alignment: Alignment.topRight,
                                //       child: Padding(
                                //         padding: EdgeInsets.all(10.0),
                                //         child: Text("forgot password?"),
                                //       )),
                                // ),

                                Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 4,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.deepOrange,
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                            50),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    onPressed: () {
                                      if (_formkey.currentState!.validate()) {
                                        setState(() {
                                          email = emailcontroller.text;
                                          password = passwordcontroller.text;
                                        });
                                      }
                                      signinUser();
                                    },
                                    child: Text(
                                      "Log In",
                                      style: textstyles.headlineblack(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
