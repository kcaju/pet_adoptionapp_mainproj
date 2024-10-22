import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

import 'package:stacked/stacked.dart';

class LoginViewmodel extends BaseViewModel {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool isLoading = false;
  toSignIn(
      {required String email,
      required String pass,
      required BuildContext context}) async {
    if (formkey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass);
        if (credential.user?.uid != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.green1,
              content: Text(
                "Logged In Successfully",
                style: TextStyle(
                    color: Palette.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
          navigationService.pushNamedAndRemoveUntil(Routes.bottomnavView);
        }
      } on FirebaseAuthException catch (e) {
        // log(e.code.toString());
        if (e.code == 'invalid-credential') {
          print('No user found for that email.');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Palette.red,
              content: Text(
                "No user found for that email.",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )));
        }
      }
      isLoading = false;
      notifyListeners();
    }
  }
}
