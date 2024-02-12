import 'package:flutter/material.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';
import 'package:my_login_app/src/features/core/screens/profile/widgets/profile_screen.dart';
import 'package:my_login_app/src/repository/authentication_respository/authentication_respository.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(tAppName, style: Theme.of(context).textTheme.headlineMedium),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              icon: const Image(image: AssetImage(tUserProfileImage))),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55);
}
