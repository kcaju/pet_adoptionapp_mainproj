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
        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Palette.green1.withOpacity(0.1)),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: viewModel.formkey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/gifcat.gif",
                      height: 180,
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        label: Text("YOUR EMAIL",
                            style: TextStyle(
                                color: Palette.mainblack.withOpacity(0.5),
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),

                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        // focusedBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //     borderSide: BorderSide(
                        //       color: Color(0xff1a75d2),
                        //     )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: viewModel.password,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      validator: (value) {
                        if (value != null && value.length == 6) {
                          return null;
                        } else {
                          return "enter password with atleast 6 charaters";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          label: Text("YOUR PASSWORD",
                              style: TextStyle(
                                  color: Palette.mainblack.withOpacity(0.5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),

                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(10)),
                          // focusedBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(10),
                          //     borderSide: BorderSide(
                          //       color: Color(0xff1a75d2),
                          //     )),
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: viewModel.confirmPassword,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                          label: Text("CONFIRM PASSWORD",
                              style: TextStyle(
                                  color: Palette.mainblack.withOpacity(0.5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          hintStyle: TextStyle(
                              color: Palette.mainblack,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(10)),
                          // focusedBorder: OutlineInputBorder(
                          //     borderRadius: BorderRadius.circular(10),
                          //     borderSide: BorderSide(
                          //       color: Color(0xff1a75d2),
                          //     )),
                          suffixIcon: Icon(
                            Icons.visibility_off_rounded,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 20,
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
