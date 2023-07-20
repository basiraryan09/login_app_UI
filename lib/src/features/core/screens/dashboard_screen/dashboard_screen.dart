import 'package:flutter/material.dart';
import 'package:login_app/src/constants/size.dar.dart';
import 'package:login_app/src/constants/text.dart';
import 'package:login_app/src/features/core/screens/dashboard_screen/widgets/app_bar/app_bar_widget.dart';
import 'package:login_app/src/features/core/screens/dashboard_screen/widgets/banners/dashboard_banners_widget.dart';
import 'package:login_app/src/features/core/screens/dashboard_screen/widgets/card/dashboard_top_courses_card_widget.dart';
import 'package:login_app/src/features/core/screens/dashboard_screen/widgets/categories/dashboard_categories_widget.dart';
import 'package:login_app/src/features/core/screens/dashboard_screen/widgets/search_bar/dashboard_search_bar_widget.dart';


class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashBoardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(appDashBoardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(appDashBoardTitle, style: textTheme.bodyText2,),
              Text(appDashBoardHeading, style:  textTheme.headline2,),
              const SizedBox(height: appDashBoardPadding,),

              //Search Bar
              DashBoardSearchBar(textTheme: textTheme),
              const SizedBox(height: appDashBoardPadding,),


              //Categories
              DashBoardCategories(textTheme: textTheme),
              const SizedBox(height: appDashBoardPadding,),


              //Banners
              DashBoardBanners(textTheme: textTheme),
              const SizedBox(height: appDashBoardPadding,),

              //Card
              Text(appDashBoardTopCourses, style: textTheme.headline4?.apply(fontSizeFactor: 1.2)),
              DashBoardTopCoursesCardWidget(textTheme: textTheme)

            ],
          ),
        ),
      ),
    );
  }
}








