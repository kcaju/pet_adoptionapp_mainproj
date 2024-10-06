import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stacked/stacked.dart';

import '../../../constants/assets.gen.dart';
import '../../tools/screen_size.dart';
import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onViewModelReady: (model) => model.startTimer(),
      builder: (context, model, child) {
        return Scaffold(
          body: Center(child: Lottie.asset(Assets.animations.catlogo)),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
