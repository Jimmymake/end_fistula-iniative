import 'package:end_fistula_iniative/screens/placeof_delivery.dart';
import 'package:end_fistula_iniative/screens/deliveryperiod.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';
import 'package:flutter/material.dart';

class reporting_delivery extends StatefulWidget {
  const reporting_delivery({super.key});

  @override
  State<reporting_delivery> createState() => _reporting_deliveryState();
}

class _reporting_deliveryState extends State<reporting_delivery> {
  TextEditingController _othercomplicationscontroler = TextEditingController();
  TextEditingController lastdatecontroller = TextEditingController();

  List<String> itemcategories = ["Vaginal Delivery", "C-Section"];
  String? selelectedcategory;

  List<String> outcomebirth = [
    "Live Birth(LB)",
    "Still Birth(SB)",
    "Miscarriage(MS)"
  ];
  String? selectedbirthoutcome;

  List<String> PostDeliveryoutcome = [
    "Child alive",
    "Neonatal Death",
    "Maternal Death"
  ];
  String? selectedpostdeliveryoutcome;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "Mode OF Delivery",
          style: textstyles.headlineblack(),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(
                0xffD6EAF8,
              )),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              hint: Text(
                "select mode of delivery",
                style: textstyles.lighweightgrey(),
              ),
              value: selelectedcategory,
              items: itemcategories.map((Category) {
                return DropdownMenuItem(
                  value: Category,
                  child: Text(Category),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selelectedcategory = value;
                });
              },
              dropdownColor: const Color(
                0xffD6EAF8,
              ),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              isExpanded: true,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "Child birth outcome",
          style: textstyles.headlineblack(),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(
                0xffD6EAF8,
              )),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              hint: Text(
                "select Birthoutcome",
                style: textstyles.lighweightgrey(),
              ),
              value: selectedbirthoutcome,
              items: outcomebirth.map((outcome) {
                return DropdownMenuItem(
                  value: outcome,
                  child: Text(outcome),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedbirthoutcome = value;
                });
              },
              dropdownColor: const Color(
                0xffD6EAF8,
              ),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              isExpanded: true,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "REPORT AFTER DELIVERY",
          style: textstyles.boldtextblack(),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "Post Delivery outcome",
          style: textstyles.headlineblack(),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(
                0xffD6EAF8,
              )),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(15),
              hint: Text(
                "Post delivery outcome",
                style: textstyles.lighweightgrey(),
              ),
              value: selectedpostdeliveryoutcome,
              items: PostDeliveryoutcome.map((outcome) {
                return DropdownMenuItem(
                  value: outcome,
                  child: Text(outcome),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedpostdeliveryoutcome = value;
                });
              },
              dropdownColor: const Color(
                0xffD6EAF8,
              ),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
              isExpanded: true,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "Other Complications",
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
            controller: _othercomplicationscontroler,
            maxLines: 6,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter complications",
                hintStyle: textstyles.lighweightgrey()),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        Text(
          "Last date tracked",
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
            keyboardType: TextInputType.datetime,
            controller: lastdatecontroller,
            maxLines: 1,
            decoration: InputDecoration(
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintText: "Enter last date trucked",
                hintStyle: textstyles.lighweightgrey()),
          ),
        ),
      ],
    );
  }
}
