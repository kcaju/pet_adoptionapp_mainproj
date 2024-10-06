import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/favourite/favourite_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/favourite/widget/favourite_card.dart';
import 'package:stacked/stacked.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavouriteViewmodel>.reactive(
      viewModelBuilder: () {
        return FavouriteViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.mainWhite,
          appBar: AppBar(
            backgroundColor: Palette.blue3,
            centerTitle: true,
            title: Text(
              "They are waiting for you!!",
              style: TextStyle(
                  color: Palette.mainWhite, fontWeight: FontWeight.bold),
            ),
          ),
          body: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    viewModel.onTap();
                  },
                  child: FavouriteCard()),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
              itemCount: 12),
        );
      },
    );
  }
}
