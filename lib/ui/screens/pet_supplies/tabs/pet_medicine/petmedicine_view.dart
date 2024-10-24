import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/pet_supplies/tabs/pet_medicine/petmedicine_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetmedicineView extends StatelessWidget {
  const PetmedicineView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetmedicineViewmodel>.reactive(
      viewModelBuilder: () {
        return PetmedicineViewmodel();
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
                            image: CachedNetworkImageProvider(
                                "https://5.imimg.com/data5/SELLER/Default/2023/10/354227997/FM/GH/RL/1890507/nutritional-coat-skin-conditioner-for-dog-500x500.jpg")),
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
