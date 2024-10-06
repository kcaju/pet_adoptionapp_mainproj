import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

class RegistrationViewmodel extends BaseViewModel {
  final formkey = GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController email = TextEditingController();
  bool isLoading = false;
  toSignUp(
      {required String email,
      required String password,
      required BuildContext context}) async {
    if (formkey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        //navigate to login pge
        if (credential.user?.uid != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.green1,
              content: Text(
                "User Signed Up Successfully",
                style: TextStyle(
                    color: Palette.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
          navigationService.pushNamedAndRemoveUntil(Routes.loginView);
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.red,
              content: Text(
                "The password provided is too weak.",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.red,
              content: Text(
                "The account already exists for that email.",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
        }
      } catch (e) {
        print(e);
      }
      isLoading = false;
      notifyListeners();
    }
  }

  toSignIn() {
    navigationService.navigateTo(Routes.loginView);
  }
}
