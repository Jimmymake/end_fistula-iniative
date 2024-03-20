import 'package:flutter/material.dart';

class dashboard2 extends StatefulWidget {
  const dashboard2({super.key});

  @override
  State<dashboard2> createState() => _dashboard2State();
}

class _dashboard2State extends State<dashboard2> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return DefaultTabController(length: 2,
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                constraints: const BoxConstraints(
                  minHeight: 300,
                ),
                width: 220,
                height: screenheight * 0.6,
                child: Column(children: [ Tab(
                        child: Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                    )),
                    Tab(
                        child: Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                    ))],)
              )
            ],
          ),
        ),
      ),
    );
  }
}
