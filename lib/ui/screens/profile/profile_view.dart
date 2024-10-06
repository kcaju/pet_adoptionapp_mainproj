import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/profile/profile_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewmodel>.reactive(
      viewModelBuilder: () {
        return ProfileViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Palette.blue3,
            centerTitle: true,
            title: Text("Profile",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          body: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ListTile(
                //   leading: Icon(
                //     Icons.person,
                //     color: ColorConstants.mainblack,
                //   ),
                //   title: Text("My Profile",
                //       style: TextStyle(
                //           color: ColorConstants.mainblack,
                //           fontSize: 20,
                //           fontWeight: FontWeight.bold)),
                // ),
                SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: CircleAvatar(
                    radius: 60,
                    child: Assets.images.profile1.image(fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Palette.grey,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Palette.mainblack,
                  ),
                  title: Text("Settings",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: Palette.mainblack,
                  ),
                  title: Text("Notifications",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(
                    Icons.translate,
                    color: Palette.mainblack,
                  ),
                  title: Text("Language",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(
                    Icons.quiz,
                    color: Palette.mainblack,
                  ),
                  title: Text("FAQ",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Icon(
                    Icons.error,
                    color: Palette.mainblack,
                  ),
                  title: Text("About App",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                GestureDetector(
                  onTap: () async {
                    viewModel.toSignOut(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Palette.mainblack,
                    ),
                    title: Text("Logout",
                        style: TextStyle(
                            color: Palette.mainblack,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
