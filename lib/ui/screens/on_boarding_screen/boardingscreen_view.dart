import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/ui/screens/login/login_view.dart';
import 'package:petadpotion_app/ui/screens/on_boarding_screen/boardingscreen_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/registration/registration_view.dart';
import 'package:stacked/stacked.dart';

class BoardingscreenView extends StatelessWidget {
  const BoardingscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BoardingscreenViewmodel>.reactive(
      viewModelBuilder: () {
        return BoardingscreenViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 25),
                ),
                Text(
                  "to",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Text(
                  "Pets Haus",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Builder(builder: (context) {
                      return InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Text(
                          "SignIn",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    }),
                    SizedBox(
                      height: 80,
                      width: 100,
                      child: VerticalDivider(
                        thickness: 3,
                        color: Colors.green,
                      ),
                    ),
                    Builder(builder: (context) {
                      return InkWell(
                        onTap: () {
                          Scaffold.of(context).openEndDrawer();
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                      );
                    }),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        "https://images.pexels.com/photos/8216026/pexels-photo-8216026.jpeg?auto=compress&cs=tinysrgb&w=600"))),
          ),
          drawer: Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: Drawer(
              child: LoginView(),
            ),
          ),
          endDrawer: Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: Drawer(
              child: RegistrationView(),
            ),
          ),
        );
      },
    );
  }
}
