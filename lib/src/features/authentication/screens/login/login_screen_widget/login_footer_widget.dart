import 'package:flutter/material.dart';

import '../../../../../constants/images.dart';
import '../../../../../constants/size.dar.dart';
import '../../../../../constants/text.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('OR'),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(appGooglePng),
                width: 20,
              ),
              onPressed: () {

              },
              label:  Text(appSignInWithGoogle.toUpperCase())),
        ),
        const SizedBox(
          height: appFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(text: appDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(text: appSignup, style: TextStyle(color: Colors.blue),)
                ]
            ),
          ),
        ),
      ],
    );
  }
}
