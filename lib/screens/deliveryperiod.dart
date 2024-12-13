import 'package:end_fistula_iniative/screens/placeof_delivery.dart';
import 'package:end_fistula_iniative/screens/reporting_delivery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';

class delevery_period extends StatefulWidget {
  const delevery_period({super.key});

  @override
  State<delevery_period> createState() => _delevery_periodState();
}

enum deliveryplace { home, facility }

deliveryplace? selectedplace; // Initially no gender selected
bool boolian = false;

class _delevery_periodState extends State<delevery_period> {
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Row(
                  children: [
                    Text(
                      "ID Number",
                      style: textstyles.headlineblack(),
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.black,
                          fixedSize: const Size(
                            100,
                            50,
                          )),
                      onPressed: () {},
                      child: Text("Search",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ))),
                    ),
                    Spacer()
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
                    maxLines: 1,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Enter ID Number",
                        hintStyle: textstyles.lighweightgrey()),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Text(
                  "PLACE OF DELIVERY",
                  style: textstyles.boldtextblack(),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: deliveryplace.facility,
                          groupValue: selectedplace,
                          onChanged: (newValue) {
                            setState(() {
                              selectedplace = newValue as deliveryplace?;
                              boolian = false;
                            });
                          },
                        ),
                        Text('Healthy Facility Delivery'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: deliveryplace.home,
                          groupValue: selectedplace,
                          onChanged: (newValue) {
                            setState(() {
                              selectedplace = newValue as deliveryplace?;
                              boolian = true;
                            });
                          },
                        ),
                        Text('Home Delivery'),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                boolian ? home_delevery() : facility_delivery(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Text(
                  "DELIVERY",
                  style: textstyles.boldtextblack(),
                ),
                reporting_delivery(),
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
                    onPressed: () {},
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
      )),
    );
  }
}
