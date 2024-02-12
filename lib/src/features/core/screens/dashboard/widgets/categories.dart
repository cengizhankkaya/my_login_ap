import 'package:flutter/material.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/features/core/models/dashboard/categories_model.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 45,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tDarkColor),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: txtTheme.titleLarge?.apply(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading,
                          style: txtTheme.titleLarge,
                          overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading,
                          style: txtTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: txtTheme.titleLarge?.apply(color: Colors.white),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text("Java Script",
        //                   style: txtTheme.titleLarge,
        //                   overflow: TextOverflow.ellipsis),
        //               Text("10 Lessons",
        //                   style: txtTheme.bodyMedium,
        //                   overflow: TextOverflow.ellipsis)
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   //
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: txtTheme.titleLarge?.apply(color: Colors.white),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 "Java Script",
        //                 style: txtTheme.titleLarge,
        //                 overflow: TextOverflow.ellipsis,
        //               ),
        //               Text("10 Lessons",
        //                   style: txtTheme.bodyMedium,
        //                   overflow: TextOverflow.ellipsis)
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   //
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: tDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: txtTheme.titleLarge?.apply(color: Colors.white),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text("Java Script",
        //                   style: txtTheme.titleLarge,
        //                   overflow: TextOverflow.ellipsis),
        //               Text("10 Lessons",
        //                   style: txtTheme.bodyMedium,
        //                   overflow: TextOverflow.ellipsis)
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
