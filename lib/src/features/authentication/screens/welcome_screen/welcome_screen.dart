import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/images.dart';
import 'package:login_app/src/constants/size.dar.dart';
import 'package:login_app/src/constants/text.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness =mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? appSecondaryColor : appPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(appDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(welcomeImg),
              height: height * 0.5,
            ),
            Column(
              children: [
                Text(
                  appWelcomeTitle,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  appWelcomeSubTitle,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    appLogin.toUpperCase(),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(SignUpScreen());
                    },
                    child: Text(
                      appSignup.toUpperCase(),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
