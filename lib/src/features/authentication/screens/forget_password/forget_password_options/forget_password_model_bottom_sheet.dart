import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/size.dar.dart';
import '../../../../../constants/text.dart';
import '../forget_password_mail/forget_password_mail.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => Container(
        padding: EdgeInsets.all(appDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(appForgetPasswordTitle, style: Theme.of(context).textTheme.headline2,),
            Text(appForgetPasswordSubTitle, style: Theme.of(context).textTheme.bodyText2,),
            const SizedBox(height: 30,),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: appEmail,
              subTitle: appResetViaEMail,
              onTap: () {
                Navigator.pop(context);
                Get.to(ForgetPasswordMailScreen());
              },),
            const SizedBox(height: 20,),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: appPhoneNo,
              subTitle: appResetViaPhone,
              onTap: () {},),
          ],
        ),
      ),
    );
  }
}

