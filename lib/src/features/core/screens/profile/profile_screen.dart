import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/images.dart';
import 'package:login_app/src/constants/size.dar.dart';
import 'package:login_app/src/constants/text.dart';
import 'package:login_app/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:login_app/src/features/core/screens/profile/widgets/profile_menu_widget.dart';
import '../../../../repository/authentictaion_repository/authentication_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var isDark = MediaQuery.of(context).platformBrightness  == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(LineAwesomeIcons.angle_left), onPressed: () {  },),
        title: Text(appProfile, style: Theme.of(context).textTheme.headline4,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark ?LineAwesomeIcons.sun : LineAwesomeIcons.moon),),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(appDefaultSize),
          child: Column(
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
                      child: Icon(
                        LineAwesomeIcons.alternate_pencil,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text(appProfileHeading, style: Theme.of(context).textTheme.headline4,),
              Text(appProfileSubHeading, style: Theme.of(context).textTheme.bodyText2,),
              const SizedBox(height: 20,),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(const UpdateProfileScreen()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()
                    ),
                    child: const Text(appEditProfile, style: TextStyle(color: appDarkColor),
                  ),
                  ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),

              //Menu Section

              ProfileMenuWidget(title: appMenu1, icon: LineAwesomeIcons.cog, onPress: () {  },),
              ProfileMenuWidget(title: appMenu2, icon: LineAwesomeIcons.wallet, onPress: () {  },),
              ProfileMenuWidget(title: appMenu3, icon: LineAwesomeIcons.user_check, onPress: () {  },),
              const Divider(color: Colors.grey,),
              const SizedBox(height: 10,),
              ProfileMenuWidget(title: appMenu4, icon: LineAwesomeIcons.info, onPress: () {},),
              ProfileMenuWidget(
                title: 'Logout',
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {
                  AuthenticationRepository.instance.logOut();
                },),
            ],
          ),
        ),
      ),
    );
  }
}


