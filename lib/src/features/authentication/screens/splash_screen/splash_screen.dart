import 'package:flutter/material.dart';
import 'package:login_app/src/constants/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPadding(
            duration: const Duration(seconds: 2),
            padding: EdgeInsets.only(
                top: animate ? 200.0 : 200.0,
                left: animate ? 140 : 140),
            child: const Image(
              image: AssetImage(appLogo),
              height: 200,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}
