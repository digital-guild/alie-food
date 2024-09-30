import 'dart:async';

import 'package:alie/src/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark
    ));
    Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder) => const HomeScreen()), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cookie_outlined,
                size: 100,
              ),
              Text(
                "Aliè",
                style: TextStyle(
                  fontSize: 90,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
