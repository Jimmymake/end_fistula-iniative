//  import 'package:cloud_firestore/cloud_fire>store.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';
import 'package:random_string/random_string.dart';
import 'package:end_fistula_iniative/utillities/databasefictions.dart';

class antenatal_visit extends StatefulWidget {
  const antenatal_visit({super.key});

  @override
  State<antenatal_visit> createState() => _antenatal_visitState();
}

class _antenatal_visitState extends State<antenatal_visit> {
  final _formkey = GlobalKey<FormState>();

  bool userregesterd = false;

  TextEditingController idcontroller = TextEditingController();
  TextEditingController datecontoller = TextEditingController();
  TextEditingController weightcontoller = TextEditingController();
  TextEditingController heightcontoler = TextEditingController();
  bool isbloodtested = false;
  bool isurinetested = false;
  bool isultrasounddone = false;
  bool diabetestested = false;
  TextEditingController outcomecontoller = TextEditingController();
  bool ismaleaccompanied = false;
  TextEditingController nextvisitcontroller = TextEditingController();

  String idnumber = "";
  String datevisited = "";
  String weight = "";
  String height = "";
  String bloodtest = "";
  String urinetest = "";
  String ultrsound = "";
  String diabetes = "";
  String outcome = "";
  String maleacompanied = "";
  String nextvisit = "";

  // atenatalfunctin() async {
  //   FirebaseFirestore.instance.collection("motherinfor").get().then((value) {
  //     value.docs.forEach((element) {
  //       if (element.data()["idnumber"] != idcontroller.text.trim()) {
  //         userregesterd = false;
  //       } else if (element.data()["idnumber"] == idcontroller.text.trim) {
  //         userregesterd = true;
  //       }
  //     });
  //   });
  // }

  myfunction() async {
    atenalfunction() async {
      String collectionname = "atenatalvisit";
      String docid = randomAlphaNumeric(10);

      Map<String, dynamic> atenataldata = {
        "idnnumber": idcontroller.text,
        "date": datecontoller.text,
        "weight": weightcontoller.text,
        "height": heightcontoler.text,
        "bloodtested": isbloodtested.toString(),
        "urinetested": isurinetested.toString(),
        "ultrasound": isultrasounddone.toString(),
        "diabetestested": diabetestested.toString(),
        "generaloutcome": outcomecontoller.text,
        "maleaccompanied": ismaleaccompanied.toString(),
        "nextvisit": nextvisitcontroller.text
      };

      await databasefuctions()
          .atenataldetails(atenataldata, docid, collectionname);
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
          constraints: BoxConstraints(minWidth: 300, maxWidth: 660),
          decoration: BoxDecoration(color: Colors.white),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
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
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Row(
                      children: [
                        Text(
                          "ID Number",
                          style: textstyles.headlineblack(),
                        ),
                        // Spacer(),
                        // ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //       shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(20)),
                        //       backgroundColor: Colors.black,
                        //       fixedSize: const Size(
                        //         100,
                        //         50,
                        //       )),
                        //   onPressed: () {},
                        //   child: Text("Search",
                        //       style: GoogleFonts.inter(
                        //           textStyle: const TextStyle(
                        //         color: Colors.white,
                        //         fontSize: 15,
                        //       ))),
                        // ),
                        // Spacer()
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter idnumber";
                          }
                          return null;
                        },
                        controller: idcontroller,
                        maxLines: 1,
                        decoration: InputDecoration(
                            // suffixIcon: Icon(Icons.search),
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
                      "Date",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter date";
                          }
                          return null;
                        },
                        controller: datecontoller,
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
                    Text(
                      "Weight",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter Weight";
                          }
                          return null;
                        },
                        controller: weightcontoller,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter weight",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    Text(
                      "Height",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter height";
                          }
                          return null;
                        },
                        controller: heightcontoler,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter Height",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "Prenatal Testing",
                      style: textstyles.boldtextblack(),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Row(
                      children: [
                        Text("Blood Testing",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ))),
                        Spacer(),
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (!states.contains(MaterialState.selected)) {
                              return Colors.transparent;
                            }
                            return null;
                          }),
                          side: const BorderSide(color: Colors.red, width: 2),
                          value: isbloodtested,
                          onChanged: (newValue) {
                            setState(() {
                              isbloodtested =
                                  newValue!; // Update the visited status
                            });
                          },
                        ),
                        const SizedBox(
                          width: 150,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Urine Testing",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ))),
                        Spacer(),
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (!states.contains(MaterialState.selected)) {
                              return Colors.transparent;
                            }
                            return null;
                          }),
                          side: const BorderSide(color: Colors.red, width: 2),
                          value: isurinetested,
                          onChanged: (newValue) {
                            setState(() {
                              isurinetested =
                                  newValue!; // Update the visited status
                            });
                          },
                        ),
                        const SizedBox(
                          width: 150,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Ultra Sound",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ))),
                        Spacer(),
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (!states.contains(MaterialState.selected)) {
                              return Colors.transparent;
                            }
                            return null;
                          }),
                          side: const BorderSide(color: Colors.red, width: 2),
                          value: isultrasounddone,
                          onChanged: (newValue) {
                            setState(() {
                              isultrasounddone =
                                  newValue!; // Update the visited status
                            });
                          },
                        ),
                        const SizedBox(
                          width: 150,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Gestrational Diabetes",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ))),
                        Spacer(),
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (!states.contains(MaterialState.selected)) {
                              return Colors.transparent;
                            }
                            return null;
                          }),
                          side: const BorderSide(color: Colors.red, width: 2),
                          value: diabetestested,
                          onChanged: (newValue) {
                            setState(() {
                              diabetestested =
                                  newValue!; // Update the visited status
                            });
                          },
                        ),
                        SizedBox(
                          width: 150,
                        )
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Text(
                      "General Outcome",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please Fill in the outcome";
                          }
                          return null;
                        },
                        controller: outcomecontoller,
                        keyboardType: TextInputType.text,
                        maxLines: 6,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter outcome",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Row(
                      children: [
                        Text("Accompanied By Male",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ))),
                        Spacer(),
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (!states.contains(MaterialState.selected)) {
                              return Colors.transparent;
                            }
                            return null;
                          }),
                          side: const BorderSide(color: Colors.red, width: 2),
                          value: ismaleaccompanied,
                          onChanged: (newValue) {
                            setState(() {
                              ismaleaccompanied =
                                  newValue!; // Update the visited status
                            });
                          },
                        ),
                        const SizedBox(
                          width: 150,
                        )
                      ],
                    ),
                    Text(
                      "Next Visit",
                      style: textstyles.headlineblack(),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(
                            0xffD6EAF8,
                          )),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter the date of the nextvisit";
                          }
                          return null;
                        },
                        controller: nextvisitcontroller,
                        keyboardType: TextInputType.datetime,
                        maxLines: 1,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Enter date",
                            hintStyle: textstyles.lighweightgrey()),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.015),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.grey,
                            fixedSize: Size(
                              screenWidth * 0.4,
                              70,
                            )),
                        onPressed: () async {
                          try {
                            FirebaseFirestore.instance
                                .collection("motherinfor")
                                .get()
                                .then((snapshot) {
                              snapshot.docs.forEach((element) {
                                if (element.data()["idnumber"] ==
                                    idcontroller.text.trim) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("user exists")));

                                  // setState(() {
                                  //   idnumber = idcontroller.text;
                                  //   datevisited = datecontoller.text;
                                  //   weight = weightcontoller.text;
                                  //   height = heightcontoler.text;
                                  //   bloodtest = isbloodtested.toString();
                                  //   urinetest = isurinetested.toString();
                                  //   ultrsound = isultrasounddone.toString();
                                  //   diabetes = diabetestested.toString();
                                  //   outcome = outcomecontoller.text;
                                  //   maleacompanied =
                                  //       ismaleaccompanied.toString();
                                  //   nextvisit = nextvisitcontroller.text;
                                  //   myfunction();
                                  // });
                                } else if (element.data()["idnumber"] !=
                                    idcontroller.text.trim()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text("user does not exist")));
                                }
                              });
                            });
                          } on FirebaseException catch (err) {
                            print("error: $err");
                          }
                        },
                        child: Text("Submit",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ))),
                      ),
                    ),
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
