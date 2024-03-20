import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/services.dart'; // Ensure this import is present


class dashboard extends StatefulWidget {
  
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    //double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
            ),
            constraints: const BoxConstraints(minHeight: 300,),
            width: 220,
            height: screenheight * 0.6,
            child: Column(children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child:  Text(
                        "Home",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)),
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.person_2_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)),
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.calendar_month_outlined,
                     color: Colors.black,
                    size: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child:  Text("ANC Visit",
                           style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)))),
                ],
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.pregnant_woman_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child:  Text("Delivery Period",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)))),
                ],
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.people_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child:  Text("Community Outreach",
                           style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)))),
                ],
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.message_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child:  Text("Chart",
                           style: GoogleFonts.inter(
                            textStyle: const TextStyle(color: Colors.black ,fontSize: 15,fontWeight: FontWeight.bold)))),
                ],
              ),
            ]),
          ),
          Container()
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';


// // ignore: camel_case_types
// class Screen_layout extends StatefulWidget {
//   const Screen_layout({super.key});

//   @override
//   State<Screen_layout> createState() => _Screen_layoutState();
// }

// class _Screen_layoutState extends State<Screen_layout> {
//   final Screenpagecontoler = PageController(); //set up a screen pagecontroler
//   int currentpage=0; // intialize the current page

//   @override
//   void dispose() {
//     Screenpagecontoler.dispose();
//     super.dispose();

//     ///need do dispose the pagecontroller
//     Screenpagecontoler.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         body: PageView(
//           controller: Screenpagecontoler,
//           children: const [
//             Center(
//               child: Text("Home screen"),
//             ),
//             Center(
//               child: Text("Account screen"),
//             ),
//             Center(
//               child: Text("cart screen"),
//             ),
//             Center(
//               child: Text("more screen"),
//             )
//           ],
//         ),
//         bottomNavigationBar: TabBar(
//             onTap: (int page) {
           
//               Screenpagecontoler.jumpToPage(page);
//               setState(() {
//                 currentpage = page;
//               });
//             },
//             tabs: [
//               Tab(
//                   child: Icon(
//                 Icons.home_outlined,
//                 color: currentpage == 0 ? Colors.blue : Colors.black,
//               )),
//               Tab(
//                 child: Icon(
//                   Icons.account_circle_outlined,
//                   color: currentpage == 1 ? Colors.blue : Colors.black,
//                 ),
//               ),
//               Tab(
//                 child: Icon(
//                   Icons.shopping_cart_outlined,
//                   color: currentpage == 2 ? Colors.blue : Colors.black,
//                 ),
//               ),
//               Tab(
//                 child: Icon(
//                   Icons.menu,
//                   color: currentpage == 3 ? Colors.blue : Colors.black,
//                 ),
//               )
//             ]
//             ),
//       ),
//     );
//   }
// }