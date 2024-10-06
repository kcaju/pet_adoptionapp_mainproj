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
        return Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            // backgroundColor: Palette.blue5,
            // appBar: AppBar(
            //   centerTitle: true,
            //   leading: Icon(null),
            //   backgroundColor: Colors.transparent,
            //   title: Text(
            //     "Welcome to Pet Haus",
            //     style: TextStyle(
            //         color: Palette.mainblack,
            //         fontWeight: FontWeight.w700,
            //         fontSize: 20),
            //   ),
            // ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Assets.images.bg.image(fit: BoxFit.cover).image)),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  child: Form(
                    key: viewModel.formkey,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Image.asset(
                            //   "assets/images/bird.gif",
                            //   height: 100,
                            //   width: 100,
                            // )
                          ],
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              height: 450,
                              width: 800,
                            ),
                            Positioned(
                              bottom: 32,
                              left: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                height: 230,
                                // width: 400,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      colors: [
                                        Palette.blueGrey,
                                        Palette.mainWhite,
                                        Palette.blueGrey
                                      ]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextFormField(
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
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
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        label: Text(
                                          "Email",
                                          style: TextStyle(
                                              color: Palette.mainblack
                                                  .withOpacity(0.5),
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
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      validator: (value) {
                                        if (value != null &&
                                            value.length >= 6) {
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
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        label: Text(
                                          "Password",
                                          style: TextStyle(
                                              color: Palette.mainblack
                                                  .withOpacity(0.5),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 100,
                              top: 0,
                              child: Assets.images.logindog.image(height: 300),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Palette.mainblack),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                viewModel.toSignUp();
                              },
                              child: Text(
                                " SignUp",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Palette.green),
                              ),
                            )
                          ],
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 110),
                                  height: 60,
                                  width: 350,
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
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          colors: [
                                            Palette.blueGrey,
                                            Palette.mainWhite,
                                            Palette.blueGrey
                                          ]),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
