import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

class ProfileViewmodel extends BaseViewModel {
  toSignOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Palette.green1,
        content: Text(
          "Logged Out Successfully",
          style: TextStyle(
              color: Palette.mainblack,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        )));
    navigationService.pushNamedAndRemoveUntil(Routes.boardingscreenView);
  }
}
