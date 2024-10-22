import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/pet_supplies/tabs/pet_food/petfood_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetfoodView extends StatelessWidget {
  const PetfoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetfoodViewmodel>.reactive(
      viewModelBuilder: () {
        return PetfoodViewmodel();
      },
      builder: (context, viewModel, child) {
        return GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              mainAxisExtent: 220),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              viewModel.onTap();
            },
            child: Container(
              height: 280,
              width: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: CachedNetworkImageProvider(
                                "https://headsupfortails.com/cdn/shop/files/WhiskasOceanFishAdultDryCatFood_f5bbf1f9-31dd-433e-99bd-00582d979f60.jpg?v=1715949708")),
                        borderRadius: BorderRadius.circular(10),
                        color: Palette.mainWhite),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "title",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "price",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Palette.blue1),
            ),
          ),
        );
      },
    );
  }
}
