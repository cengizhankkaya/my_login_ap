import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/src/constanst/colors.dart';
import 'package:my_login_app/src/constanst/image_strings.dart';
import 'package:my_login_app/src/constanst/sizes.dart';
import 'package:my_login_app/src/constanst/text_strings.dart';

import 'package:my_login_app/src/features/authentication/models/user_model.dart';
import 'package:my_login_app/src/features/core/controllers/profile_contoller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.favorite)),
        title: Text(
          tEditProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: FutureBuilder(
              future: controller.getUserModel(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    UserModel userData = snapshot.data as UserModel;
                    return Column(
                      /// Step 4 - Wrap this widget FutureBuilder
                      children: [
                        // -- İMAGE with ICON
                        Stack(
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                    image: AssetImage(tUserProfileImage)),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              height: 0,
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: tPrimaryColor),
                                child: const Icon(Icons.camera,
                                    color: Colors.black, size: 20),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 50),
                        Form(
                            child: Column(
                          children: [
                            TextFormField(
                              initialValue: userData.fullName,
                              decoration: const InputDecoration(
                                  label: Text(tFullName),
                                  prefixIcon: Icon(Icons.verified_user)),
                            ),
                            const SizedBox(height: tFormHeight - 20),
                            TextFormField(
                              initialValue: userData.email,
                              decoration: const InputDecoration(
                                  label: Text(tEmail),
                                  prefixIcon: Icon(Icons.email)),
                            ),
                            const SizedBox(height: tFormHeight - 20),
                            TextFormField(
                              initialValue: userData.phoneNo,
                              decoration: const InputDecoration(
                                  label: Text(tPhoneNo),
                                  prefixIcon: Icon(Icons.phone)),
                            ),
                            const SizedBox(height: tFormHeight - 20),
                            TextFormField(
                              initialValue: userData.password,
                              obscureText: true,
                              decoration: const InputDecoration(
                                  label: Text(tPassword),
                                  prefixIcon: Icon(Icons.verified_user)),
                            ),
                            const SizedBox(height: tFormHeight - 20),
                          ],
                        ))
                      ],
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text(snapshot.error.toString()));
                  } else {
                    return const Center(
                      child: Text('Something went wrong'),
                    );
                  }
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
