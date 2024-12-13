import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:end_fistula_iniative/utillities/databasefictions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';
import 'package:random_string/random_string.dart';

class community_report extends StatefulWidget {
  const community_report({super.key});

  @override
  State<community_report> createState() => _community_reportState();
}

class _community_reportState extends State<community_report> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController RRmamecontoller = TextEditingController();
  TextEditingController regioncontoller = TextEditingController();
  TextEditingController groupcontoller = TextEditingController();
  TextEditingController datecontoller = TextEditingController();
  TextEditingController venuecontoller = TextEditingController();

  String rrname = '';
  String regionname = '';
  String groupname = '';
  String date = '';
  String venue = '';

  Future communityoutreachreportfunc() async {
    try {
      String _collectionname = "community report";
      String _docid = randomAlphaNumeric(10);
      Map<String, dynamic> comreport = {
        "rrname": RRmamecontoller.text,
        "region": regioncontoller.text,
        "groupname": groupcontoller.text,
        "date": datecontoller.text,
        "venue": venuecontoller.text
      };

      await databasefuctions()
          .communuityreport(comreport, _docid, _collectionname);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 1),
          backgroundColor: Colors.green,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Text("Details submited succesfully")));
    } on FirebaseException catch (err) {
      print("error: $err");
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
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                        "SOLIDARITY GROUPS-COMMUNITY OUTREACH ACCTIVITIS -RECORD KEEPING REPORT",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 23,
                                fontWeight: FontWeight.bold))),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Text(
                    "Name of RR(S)",
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
                      controller: RRmamecontoller,
                      validator: (_rrname) {
                        if (_rrname == null || _rrname.isEmpty) {
                          return "please Enter name";
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
                          hintText: "Enter Name of  RR's",
                          hintStyle: textstyles.lighweightgrey()),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Text(
                    "Region(Country)",
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
                      controller: regioncontoller,
                      validator: (_regionname) {
                        if (_regionname == null || _regionname.isEmpty) {
                          return "please Enter Region name";
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
                          hintText: "Enter Region(County)",
                          hintStyle: textstyles.lighweightgrey()),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Text(
                    "Name of the Group",
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
                      controller: groupcontoller,
                      keyboardType: TextInputType.datetime,
                      maxLines: 1,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Enter Name of Group",
                          hintStyle: textstyles.lighweightgrey()),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Text(
                    "Date",
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
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  Text(
                    "Activity Venue",
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
                      controller: venuecontoller,
                      keyboardType: TextInputType.datetime,
                      maxLines: 1,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Enter the activity venue",
                          hintStyle: textstyles.lighweightgrey()),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
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
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            rrname = RRmamecontoller.text;
                            regionname = regioncontoller.text;
                            groupname = groupcontoller.text;
                            date = datecontoller.text;
                            venue = venuecontoller.text;
                            communityoutreachreportfunc();
                          });
                        }
                      },
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
        ));
  }
}
