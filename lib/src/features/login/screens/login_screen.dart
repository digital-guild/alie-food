import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark, systemNavigationBarColor: Colors.white, systemNavigationBarIconBrightness: Brightness.dark));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.deliciousLobsterGourmetSeafood.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.deliciousFriedChickenPlate.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.topViewTableFullDeliciousFoodComposition.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.topViewTableFullDeliciousFoodComposition.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.deliciousLobsterGourmetSeafood.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.deliciousFriedChickenPlate.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.deliciousLobsterGourmetSeafood.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.deliciousFriedChickenPlate.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Assets.images.topViewTableFullDeliciousFoodComposition.image(height: 150, width: 100, fit: BoxFit.cover),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Elevate your home cooking with our expertly curated recipes!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Center(child: Text("Connexion", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: const Center(child: Text("S'inscrire", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
