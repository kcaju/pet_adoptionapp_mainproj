import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/ui/screens/bottomnav/bottomnav_view.dart';
import 'package:petadpotion_app/ui/screens/intermediate_screen/intermediate_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/on_boarding_screen/boardingscreen_view.dart';
import 'package:stacked/stacked.dart';

class IntermediateView extends StatelessWidget {
  const IntermediateView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IntermediateViewmodel>.reactive(
      viewModelBuilder: () {
        return IntermediateViewmodel();
      },
      builder: (context, viewModel, child) {
        return StreamBuilder(
          stream: FirebaseAuth.instance
              .authStateChanges(), //stream continously fetching data
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return BottomnavView();
            } else {
              return BoardingscreenView();
            }
          },
        );
      },
    );
  }
}
