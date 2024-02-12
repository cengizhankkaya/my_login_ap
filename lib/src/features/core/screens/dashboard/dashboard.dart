import 'package:flutter/material.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:my_login_app/src/features/core/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    //Variables
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              Text(tDashboardTitle, style: txtTheme.bodyMedium),
              Text(
                tDashboardHeading,
                style: txtTheme.displaySmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: tDashboardCardPadding),
              //Search Box
              DashboardSearch(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),
              //Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardCardPadding),
              //Banners
              DashboardBanners(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),
              //Top Course
              Text(tDashboardTopCourses,
                  style: txtTheme.titleLarge
                      ?.apply(fontSizeFactor: 1.3, fontWeightDelta: 3)),
              DashboardTopCourses(txtTheme: txtTheme),
            ],
          ),
        ),
      ),
    );
  }
}
