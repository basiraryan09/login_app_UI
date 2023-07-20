import 'package:get/get.dart';

import '../../../../repository/authentictaion_repository/authentication_repository.dart';
import '../../../core/screens/dashboard_screen/dashboard_screen.dart';

class OTPController extends GetxController{
  static OTPController get instance => Get.find();

  void verifyOTP(String otp)async{
    var isVerified =  await AuthenticationRepository.instance.verifyOtp(otp);
    isVerified ? Get.offAll(const DashBoardScreen()) : Get.back();
  }
}