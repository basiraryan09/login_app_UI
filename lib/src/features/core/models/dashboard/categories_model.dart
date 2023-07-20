import 'package:flutter/material.dart';

class DashBoardCategoriesModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashBoardCategoriesModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashBoardCategoriesModel> list =[
    DashBoardCategoriesModel('JS', 'Java Script', '10 Lessons', null),
    DashBoardCategoriesModel('F', 'Flutter', '15 Lessons', null),
    DashBoardCategoriesModel('H', 'HTML', '40 Lessons', null),
    DashBoardCategoriesModel('K', 'Kotlin', '60 Lessons', null),
    DashBoardCategoriesModel('P', 'Python', '60 Lessons', null),
  ];
}