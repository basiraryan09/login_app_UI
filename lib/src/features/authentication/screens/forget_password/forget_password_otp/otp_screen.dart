import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/size.dar.dart';
import 'package:login_app/src/features/authentication/controllers/otp_controller/otp_controller.dart';
import '../../../../../constants/colors.dart';
import '../../../../../constants/text.dart';

class OtpScreen  extends StatelessWidget {
  const OtpScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    var otp;
    var otpController = Get.put(OTPController());


    return Scaffold(
      backgroundColor: isDarkMode ? appSecondaryColor : appPrimaryColor,
      body: Container(
        padding: const EdgeInsets.all(appDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(appOtpTitle,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80
            ),),
            Text(appOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
            const SizedBox(height: 40,),
            const Text('${appOtpMessage}kingkhan5476@gmail.com', textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  OTPController.instance.verifyOTP(otp);
                }, child: const Text(appNext)))
          ],
        ),
      ),
    );
  }
}
