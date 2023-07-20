import 'package:flutter/material.dart';
import 'package:login_app/src/constants/images.dart';
import 'package:login_app/src/constants/size.dar.dart';
import 'package:login_app/src/constants/text.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/colors.dart';
import 'login_screen_widget/login_footer_widget.dart';
import 'login_screen_widget/login_form_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? appSecondaryColor : appPrimaryColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(appDefaultSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: welcomeImg,
                  title: appLoginTitle,
                  subTitle: appLoginSubTitle, ),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

