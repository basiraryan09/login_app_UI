import 'package:flutter/material.dart';
import 'package:login_app/src/constants/images.dart';

class TopCoursesModel{
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback? onPress;

  TopCoursesModel(this.title, this.heading, this.subHeading, this.onPress, this.image);

  static List<TopCoursesModel> list =[
    TopCoursesModel('Flutter Crash Courses', '3 Sections', 'Programming Language', () { }, appDashBoardImg1),
    TopCoursesModel('Python Crash Courses', '5 Sections', 'Programming Language', () { }, appDashBoardImg2),
    TopCoursesModel('Html Crash Courses', '7 Sections', 'Programming Language', () { }, appDashBoardImg1),
    TopCoursesModel('Java Crash Courses', '9 Sections', 'Programming Language', () { }, appDashBoardImg2),
  ];
}