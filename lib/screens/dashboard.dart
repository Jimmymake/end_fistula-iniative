import 'package:end_fistula_iniative/screens/atenatal_visit.dart';
import 'package:end_fistula_iniative/screens/community_outreach_report.dart';
import 'package:end_fistula_iniative/screens/placeof_delivery.dart';
import 'package:end_fistula_iniative/screens/deliveryperiod.dart';
import 'package:end_fistula_iniative/screens/regeter_mother.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:end_fistula_iniative/utillities/textstyles.dart';
import 'package:flutter/widgets.dart';

class main_dashboard extends StatefulWidget {
  main_dashboard({super.key});

  @override
  State<main_dashboard> createState() => _main_dashboardState();
}

class _main_dashboardState extends State<main_dashboard> {
  final Screenpagecontoler = PageController();
  int currentpage = 0;

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
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: MouseRegion(
                    cursor: SystemMouseCursors.click, child: Icon(Icons.menu)),
              ),
              Text("LETS END FISTULA INITIATIVE",
                  style: textstyles.boldtextwhite()),
              GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Icon(Icons.more_vert_outlined),
                ),
              ),
            ],
          ),
          iconTheme: IconThemeData(color: Colors.white),
          bottom: TabBar(
              isScrollable: true,
              onTap: (int page) {
                Screenpagecontoler.jumpToPage(page);
                setState(() {
                  currentpage = page;
                });
              },
              tabs: [
                Tab(
                  child: Text(
                    "Regester Mother",
                    style: textstyles.headlineblack(),
                  ),
                ),
                Tab(
                  child: Text(
                    "Atenatal Visit",
                    style: textstyles.headlineblack(),
                  ),
                ),
                Tab(
                  child: Text(
                    "Delivery",
                    style: textstyles.headlineblack(),
                  ),
                ),
               
                Text(
                  "Community Outreach",
                  style: textstyles.headlineblack(),
                ),
              ]),
        ),
        body: PageView(
          controller: Screenpagecontoler,
          children: [
            mother_regester(),
            antenatal_visit(),
            delevery_period(),
            community_report()
          ],
        ),
      ),
    );
  }
}
