import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/login/login_viewmodel.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewmodel>.reactive(
      viewModelBuilder: () {
        return LoginViewmodel();
      },
      builder: (context, viewModel, child) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Palette.green1.withOpacity(0.1)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              child: Form(
                key: viewModel.formkey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/gifdog.gif",
                      height: 220,
                    ),
                    Text(
                      "Sign In to your account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      controller: viewModel.email,
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.contains("@")) {
                          return null;
                        } else {
                          return "Enter email";
                        }
                      },
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(50)),
                        label: Text(
                          "EMAIL",
                          style: TextStyle(
                              color: Palette.mainblack.withOpacity(0.5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: viewModel.password,
                      obscureText: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      validator: (value) {
                        if (value != null && value.length == 6) {
                          return null;
                        } else {
                          return "Enter password with atleast 6 charaters";
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Palette.mainblack,
                        ),
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        label: Text(
                          "PASSWORD",
                          style: TextStyle(
                              color: Palette.mainblack.withOpacity(0.5),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    viewModel.isLoading
                        ? CircularProgressIndicator()
                        : InkWell(
                            onTap: () {
                              viewModel.toSignIn(
                                  email: viewModel.email.text,
                                  pass: viewModel.password.text,
                                  context: context);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 110),
                              height: 60,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Assets.images.paws.image(height: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Sign In",
                                    style: TextStyle(
                                        // fontFamily: FontFamily.barlow,
                                        color: Palette.mainblack,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Assets.images.paws.image(height: 20),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Palette.blue1,

                                  // gradient: LinearGradient(
                                  //     begin: Alignment.centerLeft,
                                  //     colors: [
                                  //       Palette.blueGrey,
                                  //       Palette.mainWhite,
                                  //       Palette.blueGrey
                                  //     ]),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
