import 'package:flutter/cupertino.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_delevery extends StatefulWidget {
  const home_delevery({super.key});

  @override
  State<home_delevery> createState() => _home_deleveryState();
}

TextEditingController facilitycontoller = TextEditingController();
TextEditingController househodecontroler = TextEditingController();
TextEditingController phonenumbercontroler = TextEditingController();
TextEditingController idcontroller = TextEditingController();

class _home_deleveryState extends State<home_delevery> {
//  @override
//   void dispose() {
//     facilitycontoller.dispose();
//     househodecontroler.dispose();
//     phonenumbercontroler.dispose();
//     idcontroller.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "House hold name",
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
            keyboardType: TextInputType.name,
            controller: househodecontroler,
            maxLines: 1,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter Name",
                hintStyle: textstyles.lighweightgrey()),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "PhoneNumber",
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
            keyboardType: TextInputType.phone,
            controller: phonenumbercontroler,
            maxLines: 1,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter PhoneNumber",
                hintStyle: textstyles.lighweightgrey()),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "ID Number",
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
            keyboardType: TextInputType.text,
            controller: idcontroller,
            maxLines: 1,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter ID NUmber",
                hintStyle: textstyles.lighweightgrey()),
          ),
        ),
      ]),
    );
  }
}

class facility_delivery extends StatefulWidget {
  const facility_delivery({super.key});

  @override
  State<facility_delivery> createState() => _facility_deliveryState();
}

class _facility_deliveryState extends State<facility_delivery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Facility",
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
              keyboardType: TextInputType.name,
              controller: facilitycontoller,
              maxLines: 1,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter Facility Name",
                  hintStyle: textstyles.lighweightgrey()),
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
