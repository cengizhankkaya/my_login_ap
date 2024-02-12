import 'package:flutter/material.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/features/core/models/dashboard/courses_model.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardTopCoursesModel.list;
    return SizedBox(
        height: 200,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) => SizedBox(
            width: 400,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(list[index].title,
                              style: txtTheme.headlineMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Flexible(
                            child: Image(
                                image: AssetImage(list[index].image),
                                height: 100)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder()),
                          onPressed: () {},
                          child: const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(width: tDashboardCardPadding),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].heading,
                                style: txtTheme.headlineMedium,
                                overflow: TextOverflow.ellipsis),
                            Text(
                              list[index].subHeading,
                              style: txtTheme.bodyMedium,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),

          // children: [
          //   SizedBox(
          //     width: 400,
          //     height: 200,
          //     child: Padding(
          //       padding: const EdgeInsets.only(right: 10, top: 5),
          //       child: Container(
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(10),
          //             color: tCardBgColor),
          //         padding: const EdgeInsets.all(10),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Flexible(
          //                   child: Text("Flutter Crash Course",
          //                       style: txtTheme.headlineMedium,
          //                       maxLines: 2,
          //                       overflow: TextOverflow.ellipsis),
          //                 ),
          //                 const Flexible(
          //                     child: Image(
          //                         image: AssetImage(tTopCourseImage1),
          //                         height: 100)),
          //               ],
          //             ),
          //             Row(
          //               children: [
          //                 ElevatedButton(
          //                   style: ElevatedButton.styleFrom(
          //                       shape: const CircleBorder()),
          //                   onPressed: () {},
          //                   child: const Icon(Icons.play_arrow),
          //                 ),
          //                 const SizedBox(width: tDashboardCardPadding),
          //                 Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Text("3 Sections",
          //                         style: txtTheme.headlineMedium,
          //                         overflow: TextOverflow.ellipsis),
          //                     Text(
          //                       "Programing Languages",
          //                       style: txtTheme.bodyMedium,
          //                       overflow: TextOverflow.ellipsis,
          //                     )
          //                   ],
          //                 ),
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          //   SizedBox(
          //     width: 400,
          //     height: 200,
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: tCardBgColor),
          //       padding: const EdgeInsets.all(10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                 child: Text("Flutter Crash Course",
          //                     style: txtTheme.headlineMedium,
          //                     maxLines: 2,
          //                     overflow: TextOverflow.ellipsis),
          //               ),
          //               const Flexible(
          //                   child: Image(
          //                       image: AssetImage(tTopCourseImage1),
          //                       height: 100)),
          //             ],
          //           ),
          //           Row(
          //             children: [
          //               ElevatedButton(
          //                 style: ElevatedButton.styleFrom(
          //                     shape: const CircleBorder()),
          //                 onPressed: () {},
          //                 child: const Icon(Icons.play_arrow),
          //               ),
          //               const SizedBox(width: tDashboardCardPadding),
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text("3 Sections",
          //                       style: txtTheme.headlineMedium,
          //                       overflow: TextOverflow.ellipsis),
          //                   Text(
          //                     "Programing Languages",
          //                     style: txtTheme.bodyMedium,
          //                     overflow: TextOverflow.ellipsis,
          //                   )
          //                 ],
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          //   SizedBox(
          //     width: 400,
          //     height: 200,
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(10),
          //           color: tCardBgColor),
          //       padding: const EdgeInsets.all(10),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Flexible(
          //                 child: Text("Flutter Crash Course",
          //                     style: txtTheme.headlineMedium,
          //                     maxLines: 2,
          //                     overflow: TextOverflow.ellipsis),
          //               ),
          //               const Flexible(
          //                   child: Image(
          //                       image: AssetImage(tTopCourseImage1),
          //                       height: 100)),
          //             ],
          //           ),
          //           Row(
          //             children: [
          //               ElevatedButton(
          //                 style: ElevatedButton.styleFrom(
          //                     shape: const CircleBorder()),
          //                 onPressed: () {},
          //                 child: const Icon(Icons.play_arrow),
          //               ),
          //               const SizedBox(width: tDashboardCardPadding),
          //               Column(
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text("3 Sections",
          //                       style: txtTheme.headlineMedium,
          //                       overflow: TextOverflow.ellipsis),
          //                   Text(
          //                     "Programing Languages",
          //                     style: txtTheme.bodyMedium,
          //                     overflow: TextOverflow.ellipsis,
          //                   )
          //                 ],
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ]),
        ));
  }
}
