import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/registration/registration_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistrationViewmodel>.reactive(
      viewModelBuilder: () {
        return RegistrationViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: Palette.mainWhite.withOpacity(0.9),
          // extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            leading: Icon(null),
          ),
          body: Container(
            alignment: Alignment.topLeft,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Form(
                  key: viewModel.formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Create an Account",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Palette.mainblack),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: viewModel.email,
                        validator: (value) {
                          if (value != null &&
                              value.isNotEmpty &&
                              value.contains("@")) {
                            return null;
                          } else {
                            return "invalid email";
                          }
                        },
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          hintText: "Your Eamil Address",
                          hintStyle: TextStyle(
                              color: Palette.mainblack,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Color(0xff1a75d2),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: viewModel.password,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        validator: (value) {
                          if (value != null && value.length >= 6) {
                            return null;
                          } else {
                            return "enter password with atleast 6 charaters";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            hintText: "Your Password",
                            hintStyle: TextStyle(
                                color: Palette.mainblack,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xff1a75d2),
                                )),
                            suffixIcon: Icon(
                              Icons.visibility_off_rounded,
                              color: Colors.grey,
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: viewModel.confirmPassword,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        validator: (value) {
                          if (viewModel.password.text ==
                              viewModel.confirmPassword.text) {
                            return null;
                          } else {
                            return "password doesnot match";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            hintText: "Confirm Your Password",
                            hintStyle: TextStyle(
                                color: Palette.mainblack,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Color(0xff1a75d2),
                                )),
                            suffixIcon: Icon(
                              Icons.visibility_off_rounded,
                              color: Colors.grey,
                            )),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Already have an account?",
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
                              viewModel.toSignIn();
                            },
                            child: Text(
                              " SignIn",
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
                                viewModel.toSignUp(
                                    email: viewModel.email.text,
                                    password: viewModel.password.text,
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
                                      "Sign Up",
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
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        Assets.images.regcover.image(fit: BoxFit.fill).image)),
          ),
        );
      },
    );
  }
}
