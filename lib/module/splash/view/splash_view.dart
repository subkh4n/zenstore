import 'package:flutter/material.dart';
import 'package:zenstore/core.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to SliderView screen and remove Splash screen from the stack
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SliderView()),
      );
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/logo.png",
                height: 120.0,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "ZENSTORE",
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
