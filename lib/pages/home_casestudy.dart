//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kcsm/pages/about_kaar.dart';
import 'package:kcsm/pages/bookmarks.dart';
import 'package:kcsm/pages/casestudy.dart';
import 'package:kcsm/pages/statistics.dart';

class HomeCasestudy extends StatefulWidget {
  const HomeCasestudy({super.key});

  @override
  State<HomeCasestudy> createState() => _HomeCasestudyState();
}

class _HomeCasestudyState extends State<HomeCasestudy> {
  List pages = [
    const CustomerCaseStudy(),
    const Bookmarks(),
    const Statistics(),
    const AboutKaar()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 35.0, left: 30),
        child: Container(
          //width: MediaQuery.of(context).size.width * 1.5,
          //color: Colors.redAccent,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 34),
                backgroundColor: Colors.redAccent,
                shape: StadiumBorder()),
            onPressed: () {},
            child: GNav(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                color: Colors.white54,
                duration: Duration(microseconds: 1900),
                gap: 9,

                //tabActiveBorder: Border.all(width: 2),
                selectedIndex: currentIndex,
                onTabChange: onTap,
                backgroundColor: Colors.redAccent,

                // tabBorder: Border.all(color: Colors.redAccent),
                tabBackgroundColor: Colors.black,
                activeColor: Colors.white,
                tabs: const [
                  GButton(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    icon: Icons.bookmark,
                    text: 'Bookmarks',
                  ),
                  GButton(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    icon: Icons.bar_chart,
                    text: 'Statistics',
                  ),
                  GButton(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    icon: Icons.web,
                    text: 'About Kaar',
                  )
                ]),
          ),
        ),
      ),

      // bottomNavigationBar: Card(
      //   child:

      // )
      // Container(
      //   padding: EdgeInsets.only(bottom: 20, left: 40, right: 40),
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.all(Radius.circular(50))),
      //   child: BottomNavigationBar(
      //     fixedColor: Colors.redAccent,
      //     onTap: onTap,
      //     currentIndex: currentIndex,
      //     items: const [
      //       BottomNavigationBarItem(
      //         backgroundColor: Colors.black,
      //         icon: Icon(Icons.home),
      //         // ImageIcon(AssetImage("assets/images/landing2.png")
      //         // ),
      //         label: "Home",
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.bookmark_outline),
      //           label: "Bookmarks",
      //           backgroundColor: Colors.black),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.bar_chart),
      //           label: "Statistics",
      //           backgroundColor: Colors.black),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.web),
      //           label: "About Kaar",
      //           backgroundColor: Colors.black),
      //     ],
      //   ),
      // )
    );
  }
}
