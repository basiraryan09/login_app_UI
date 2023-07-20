import 'package:flutter/material.dart';
import 'package:login_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_app/src/constants/images.dart';
import 'package:login_app/src/constants/size.dar.dart';
import 'package:login_app/src/constants/text.dart';
import 'package:login_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import '../../../../constants/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? appSecondaryColor : appPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(appDefaultSize),
            child: Column(
              children: [
                const FormHeaderWidget(
                    image: welcomeImg,
                    title: appSignUpTitle,
                    subTitle: appSignUpSubTitle),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text('OR'),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: (){},
                        icon: const Image(image: AssetImage(appGooglePng), width: 20,),
                        label: Text(appSignInWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(onPressed: (){}, child: Text.rich(TextSpan(
                      children: [
                        TextSpan(text: appAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                        TextSpan(text: appLogin.toUpperCase()),
                      ]
                    )),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

