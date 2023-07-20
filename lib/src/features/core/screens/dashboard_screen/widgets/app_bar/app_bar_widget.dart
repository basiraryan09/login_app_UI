import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/core/screens/profile/profile_screen.dart';
import '../../../../../../constants/colors.dart';
import '../../../../../../constants/images.dart';
import '../../../../../../constants/text.dart';


class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashBoardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        appName,
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: appCardBgColor,
          ),
          child: IconButton(
            onPressed: () {
              Get.to(const ProfileScreen());
            },
            icon: const Image(
              image: AssetImage(appLogo),
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}