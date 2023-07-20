import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:login_app/src/features/core/screens/dashboard_screen/dashboard_screen.dart';
import 'package:login_app/src/repository/authentictaion_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  //Variables
    final _auth = FirebaseAuth.instance;
    late final Rx<User?> firebaseUser;
    var verificationId = ''.obs;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 3));
    firebaseUser = Rx<User?>(_auth.currentUser);
    //Listening the user what he perform like login or Logout
    firebaseUser.bindStream(_auth.userChanges());
    //Now Firebase is performing an action
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    //if user is logout
    user == null ? Get.offAll(() => const WelcomeScreen()) : Get.offAll(() => const DashBoardScreen());
  }

  //Function
  Future<void> phoneAuthentication(String phoneNo) async {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e){
          if(e.code == 'invalid-phone-number'){
            Get.snackbar('Error', 'The Provided phone number is not valid');
          }else{
            Get.snackbar('Error', 'Something Wrong try again');
          }
        },
        codeSent: (verificationId, resendToken){
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId){
          this.verificationId.value = verificationId;
        });
  }

   Future<bool> verifyOtp(String otp)async{
     var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
     return credentials.user != null ? true : false;
  }


    //Creating user with email and Password
  Future<void> createUserWithEmailAndPassword(String email,String password) async {
   try {
     await _auth.createUserWithEmailAndPassword(email: email, password: password);
     firebaseUser.value != null ? Get.offAll(() => const DashBoardScreen()) : Get.to(const WelcomeScreen());
   }on FirebaseAuthException catch(e){
    final ex = SignupWithEmailAndPasswordFailure.code(e.code);
    print('FIREBASE AUTH EXCEPTION -${ex.message}');
   }catch (_){
     const ex = SignupWithEmailAndPasswordFailure();
     print('EXCEPTION - ${ex.message}');
     throw ex;
   }
  }


  Future<void> loginUserWithEmailAndPassword(String email,String password) async {
   try {
     await _auth.signInWithEmailAndPassword(email: email, password: password);
   }on FirebaseAuthException catch(e){

   }catch (_){}
  }

  Future<void> logOut()async => _auth.signOut();
}