//import 'dart:ffi';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen_layout extends StatefulWidget {
  const Screen_layout({super.key});

  @override
  State<Screen_layout> createState() => _Screen_layoutState();
}

class _Screen_layoutState extends State<Screen_layout> {
  final Screenpagecontoler = PageController(); //set up a screen pagecontroler
  int currentpage = 0; // intialize the current page

  @override
  void dispose() {
    Screenpagecontoler.dispose();
    super.dispose();

    ///need do dispose the pagecontroller
    Screenpagecontoler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.zero,child: Row(children:<Widget> [Container(
  // Define constraints for the container
  constraints: BoxConstraints(
    minHeight: 100, // Example minimum height
    minWidth: double.infinity, // Expand container to full width
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Align tabs to the start (left)
    children: [
      Tab(
        child: Icon(
          Icons.home_outlined,
          color: currentpage == 0 ? Colors.red : Colors.black,
        ),
      ),
      Tab(
        child: Icon(
          Icons.account_circle_outlined,
          color: currentpage == 1 ? Colors.red : Colors.black,
        ),
      ),
      Tab(
        child: Icon(
          Icons.shopping_cart_outlined,
          color: currentpage == 2 ? Colors.red : Colors.black,
        ),
      ),
      Tab(
        child: Icon(
          Icons.menu,
          color: currentpage == 3 ? Colors.red : Colors.black,
        ),
      ),
    ],
  ),
)
,Expanded(
  child: PageView(
            controller: Screenpagecontoler,
            children: const [
              Center(
                child: Text("Home screen"),
              ),
              Center(
                child: Text("Account screen"),
              ),
              Center(
                child: Text("cart screen"),
              ),
              Center(
                child: Text("more screen"),
              )
            ],),
)],),
        ),
        // body: PageView(
        //   controller: Screenpagecontoler,
        //   children: const [
        //     Center(
        //       child: Text("Home screen"),
        //     ),
        //     Center(
        //       child: Text("Account screen"),
        //     ),
        //     Center(
        //       child: Text("cart screen"),
        //     ),
        //     Center(
        //       child: Text("more screen"),
        //     )
        //   ],
        // ),
        // bottomNavigationBar: TabBar(
        //     onTap: (int page) {
        //       Screenpagecontoler.jumpToPage(page);
        //       setState(() {
        //         currentpage = page;
        //       });
        //     },
        //     tabs: [
        //       Tab(
        //           child: Icon(
        //         Icons.home_outlined,
        //         color: currentpage == 0 ? Colors.red : Colors.black,
        //       )),
        //       Tab(
        //         child: Icon(
        //           Icons.account_circle_outlined,
        //           color: currentpage == 1 ? Colors.red : Colors.black,
        //         ),
        //       ),
        //       Tab(
        //         child: Icon(
        //           Icons.shopping_cart_outlined,
        //           color: currentpage == 2 ? Colors.red : Colors.black,
        //         ),
        //       ),
        //       Tab(
        //         child: Icon(
        //           Icons.menu,
        //           color: currentpage == 3 ? Colors.red : Colors.black,
        //         ),
        //       )
        //     ]),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ScreenLayout extends StatefulWidget {
//   const ScreenLayout({Key? key}) : super(key: key);

//   @override
//   State<ScreenLayout> createState() => _ScreenLayoutState();
// }

// class _ScreenLayoutState extends State<ScreenLayout> {
//   final PageController screenPageController = PageController();
//   int currentPage = 0;

//   @override
//   void dispose() {
//     screenPageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.zero,
//           child: Row(
//             children: <Widget>[
//               Container(
//                 constraints: BoxConstraints(
//                   minHeight: 100,
//                   minWidth: double.infinity,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Tab(
//                       child: Icon(
//                         Icons.home_outlined,
//                         color: currentPage == 0 ? Colors.red : Colors.black,
//                       ),
//                     ),
//                     Tab(
//                       child: Icon(
//                         Icons.account_circle_outlined,
//                         color: currentPage == 1 ? Colors.red : Colors.black,
//                       ),
//                     ),
//                     Tab(
//                       child: Icon(
//                         Icons.shopping_cart_outlined,
//                         color: currentPage == 2 ? Colors.red : Colors.black,
//                       ),
//                     ),
//                     Tab(
//                       child: Icon(
//                         Icons.menu,
//                         color: currentPage == 3 ? Colors.red : Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               PageView(
//                 controller: screenPageController,
//                 children: const [
//                   Center(
//                     child: Text("Home screen"),
//                   ),
//                   Center(
//                     child: Text("Account screen"),
//                   ),
//                   Center(
//                     child: Text("Cart screen"),
//                   ),
//                   Center(
//                     child: Text("More screen"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
