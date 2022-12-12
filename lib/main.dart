//import 'package:expense/screens/loginpage.dart';
//import 'package:expense/pages/dashboard.dart';
//import 'package:expense/pages/aad_oauth.dart';
import 'package:flutter/services.dart';
import 'package:kcsm/models/bookmarks.dart';
import 'package:kcsm/pages/about_kaar.dart';
import 'package:kcsm/pages/casestudy.dart';
import 'package:kcsm/pages/dashboard.dart';
import 'package:kcsm/detailedcasestudy/detail_customercase.dart';
import 'package:kcsm/pages/home_casestudy.dart';
import 'package:kcsm/pages/homepage.dart';
import 'package:kcsm/pages/loginpage.dart';
import 'package:kcsm/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    Caselist.getBookmark();
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KEBS',
      theme: ThemeData(
          // primarySwatch: Colors.rd,
          ),
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => const LoginPage()
      },
    );
  }
}
