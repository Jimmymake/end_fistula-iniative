import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mother_regester extends StatefulWidget {
  const mother_regester({super.key});

  @override
  State<mother_regester> createState() => _mother_regesterState();
}

class _mother_regesterState extends State<mother_regester> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeData.dark().scaffoldBackgroundColor,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          constraints: BoxConstraints(minWidth: 300, maxWidth: 500),
          decoration: BoxDecoration(color: Colors.amber),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lets end fistula infection",
                  style: GoogleFonts.inter(
                      textStyle:
                          const TextStyle(color: Colors.black, fontSize: 20))),
              TextFormField(maxLines: 1,
                decoration: InputDecoration(hintText: "Fistaname",),
              )
            ],
          ),
        ),
      ),
    );
  }
}
