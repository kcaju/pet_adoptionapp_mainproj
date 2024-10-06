import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/pet_supplies/petsupply_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/pet_supplies/tabs/pet_food/petfood_view.dart';
import 'package:petadpotion_app/ui/screens/pet_supplies/tabs/pet_medicine/petmedicine_view.dart';
import 'package:stacked/stacked.dart';

class PetsupplyView extends StatelessWidget {
  const PetsupplyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetsupplyViewmodel>.reactive(
      viewModelBuilder: () {
        return PetsupplyViewmodel();
      },
      builder: (context, viewModel, child) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Palette.mainWhite,
            appBar: AppBar(
              backgroundColor: Palette.blue3,
              centerTitle: true,
              title: Text(
                "Get the best Pet supplies",
                style: TextStyle(
                    color: Palette.mainWhite,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.medical_services,
                      size: 30,
                      color: Palette.mainWhite,
                    )),
                SizedBox(
                  width: 5,
                )
              ],
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TabBar(
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    labelColor: Palette.mainblack,
                    unselectedLabelColor: Palette.grey,
                    tabs: [
                      Tab(
                        text: "Foods",
                        icon: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 80,
                            height: 50,
                            child: Image.asset(
                              Assets.images.petfud.path,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Medicines",
                        icon: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 80,
                            height: 50,
                            child:
                                Assets.images.petplus.image(fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ]),
                Expanded(
                    child: TabBarView(
                        children: [PetfoodView(), PetmedicineView()]))
              ],
            ),
          ),
        );
      },
    );
  }
}
