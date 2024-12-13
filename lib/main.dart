import 'package:end_fistula_iniative/screens/atenatal_visit.dart';
import 'package:end_fistula_iniative/screens/community_outreach_report.dart';
import 'package:end_fistula_iniative/screens/dashboard.dart';
import 'package:end_fistula_iniative/screens/loginscreen.dart';
import 'package:end_fistula_iniative/screens/regeter_mother.dart';
import 'package:end_fistula_iniative/screens/reporting_delivery.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//import 'firebase_options.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDk4AfJm0SLuePwtrjA7HHv3b1FCus2QEw",
          authDomain: "pregnancy-trucker.firebaseapp.com",
          projectId: "pregnancy-trucker",
          storageBucket: "pregnancy-trucker.appspot.com",
          messagingSenderId: "966571676295",
          appId: "1:966571676295:web:084d17fc8f09bef8591e22",
          measurementId: "G-FJQQCCWEZK"));

  runApp(const MaterialApp(
    home: myapplication(),
    debugShowCheckedModeBanner: false,
  ));
}

class myapplication extends StatelessWidget {
  const myapplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginpage(),
    );
  }
}
