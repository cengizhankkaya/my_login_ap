import 'package:flutter/material.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';

class DashboardTopCoursesModel {
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback? onPress;

  DashboardTopCoursesModel(
      this.title, this.heading, this.subHeading, this.image, this.onPress);

  static List<DashboardTopCoursesModel> list = [
    DashboardTopCoursesModel("Flutter Crash Course", "7 Sections", "10 Lessons",
        tTopCourseImage1, null),
    DashboardTopCoursesModel("Meterial Desing Course", "6 Sections",
        "12 Lessons", tTopCourseImage3, null),
    DashboardTopCoursesModel("HTML/ CSS Crash Course", "2 Sections",
        "35 Lessons", tTopCourseImage1, null),
    DashboardTopCoursesModel(
        "Kotlin Course ", "5 Sections", "20 Lessons", tTopCourseImage3, null),
    DashboardTopCoursesModel(
        "Python Sec", "Pyhton", "100 Lessons", tTopCourseImage1, null),
  ];
}
