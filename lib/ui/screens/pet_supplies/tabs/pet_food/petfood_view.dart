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
                        borderRadius: BorderRadius.circular(10),
                        color: Palette.blue4),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "title",
                      style: TextStyle(color: Palette.mainblack, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "price",
                      style: TextStyle(color: Palette.mainblack, fontSize: 16),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Palette.grey),
            ),
          ),
        );
      },
    );
  }
}
