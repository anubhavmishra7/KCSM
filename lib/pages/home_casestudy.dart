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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Container(
            //minimum: EdgeInsets.only(bottom: 25, left: 15, right: 15),
            child: GNav(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
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
                tabs: [
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
        )
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
