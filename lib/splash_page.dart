import 'dart:async';
import 'package:flutter/material.dart';
import 'package:personal_branding_video_player_app/colors.dart';
import 'package:personal_branding_video_player_app/home_page.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  // splash is initially immutable
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState(); //createState() will creating a mutable(that can occur changes)state for splashscreen
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //what will happen when the page / app is  first launched
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) =>
             HomePage())); //when timer completes it redirects to home
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //BuildContext would fetch and monitor the positon and animation of the widgets
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/logo.png",
            scale: 1,
            height: MediaQuery.of(context).size.height*.6,
            width: MediaQuery.of(context).size.width*.6,
            ),
            const Text("Biz Learning Platform",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
