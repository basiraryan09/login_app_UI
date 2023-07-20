import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/features/authentication/models/user_model/user_model.dart';
import 'package:login_app/src/features/core/models/profile_controller/profile_controller.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/images.dart';
import '../../../../constants/size.dar.dart';
import '../../../../constants/text.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    var isDark = MediaQuery.of(context).platformBrightness  == Brightness.dark;


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(LineAwesomeIcons.angle_left), onPressed: () {
            Get.back();
        },),
        title: Text(appEditProfile, style: Theme.of(context).textTheme.headline4,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(appDefaultSize),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.done){
                if(snapshot.hasData){
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                image: AssetImage(appLogo),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: appPrimaryColor,
                              ),
                              child: const Icon(
                                LineAwesomeIcons.camera,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Form(
                          child: Column(
                          children: [
                          TextFormField(
                            style: const TextStyle(fontSize: 16.0),
                            initialValue: userData.fullName,
                            decoration: const InputDecoration(
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                label: Text(
                                  appFullName,
                                  style: TextStyle(fontSize: 18),
                                ),
                                prefixIcon: Icon(Icons.person_outline)),
                          ),
                          const SizedBox(
                            height: appFormHeight - 20,
                          ),
                          TextFormField(
                            style: const TextStyle(fontSize: 16.0),
                            initialValue: userData.fullName,
                            decoration: const InputDecoration(
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                label: Text(
                                  appEmail,
                                  style: TextStyle(fontSize: 18),
                                ),
                                prefixIcon: Icon(LineAwesomeIcons.envelope)),
                          ),
                          const SizedBox(
                            height: appFormHeight - 20,
                          ),
                          TextFormField(
                            style: const TextStyle(fontSize: 16.0),
                            initialValue: userData.fullName,
                            decoration: const InputDecoration(
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                label: Text(
                                  appPhoneNo,
                                  style: TextStyle(fontSize: 18),
                                ),
                                prefixIcon: Icon(LineAwesomeIcons.phone)),
                          ),
                          const SizedBox(
                            height: appFormHeight - 20,
                          ),
                          TextFormField(
                            style: const TextStyle(fontSize: 16.0),
                            initialValue: userData.fullName,
                            decoration: const InputDecoration(
                                alignLabelWithHint: true,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                label: Text(
                                  appPassword,
                                  style: TextStyle(fontSize: 18),
                                ),
                                prefixIcon: Icon(LineAwesomeIcons.fingerprint)),
                          ),
                          const SizedBox(height: appFormHeight,),

                          //Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () => Get.to(const UpdateProfileScreen()),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: appPrimaryColor,
                                  side: BorderSide.none,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))
                                // shape: const StadiumBorder()
                              ),
                              child: const Text(appEditProfile, style: TextStyle(color: appDarkColor),
                              ),
                            ),
                          ),

                          //Text
                          const SizedBox(height: appFormHeight,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text.rich(
                                  TextSpan(
                                      text: appJoined ,
                                      style: TextStyle(fontSize: 12),
                                      children:[ TextSpan(
                                          text: appJoinedAt, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)
                                      ),]
                                  )
                              ),
                              ElevatedButton(onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.redAccent.withOpacity(0.1),
                                    elevation: 0,
                                    foregroundColor: Colors.red,
                                    side: BorderSide.none,
                                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(3))
                                ),
                                child: const Text(appDelete),
                              )
                            ],
                          )
                        ],
                      ))
                    ],
                  );
                }else if(snapshot.hasError){
                  return Center(child: Text(snapshot.error.toString()),);
                }else{
                  return const Center(child: Text('Something went wrong'),);
                }
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            },
          ),
        ),
      ),
    );
  }
}
