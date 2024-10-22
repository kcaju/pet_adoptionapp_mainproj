import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/petsupplies_details/petsupplies_details_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetsuppliesDetailsView extends StatelessWidget {
  const PetsuppliesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetsuppliesDetailsViewmodel>.reactive(
      viewModelBuilder: () {
        return PetsuppliesDetailsViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.blueGrey,
          appBar: AppBar(
            backgroundColor: Palette.blue3,
            leading: IconButton(
                onPressed: () {
                  viewModel.goBack();
                },
                icon: Icon(
                  Icons.pets,
                  size: 26,
                  color: Palette.mainWhite,
                )),
            centerTitle: true,
            title: Text(
              " Feed them well",
              style: TextStyle(
                  color: Palette.mainWhite, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.all(15),
              height: 650,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 240,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                "https://5.imimg.com/data5/SELLER/Default/2023/10/354227997/FM/GH/RL/1890507/nutritional-coat-skin-conditioner-for-dog-500x500.jpg")),
                        borderRadius: BorderRadius.circular(15),
                        color: Palette.grey),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Name",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Palette.mainblack,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "price ₹",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Palette.mainblack,
                                      fontWeight: FontWeight.w500),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Net Qty:",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Palette.mainblack,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "kg/g",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Palette.mainblack,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ExpansionTile(
                              title: Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Palette.mainblack,
                                    fontWeight: FontWeight.w800),
                              ),
                              children: [
                                Text(
                                    "About this item, A daily Adult Dog nutrition contains all the essential Vitamins, minerals and antioxidants that boosts your pet's health and vitality, Ideal for weight management and keeping your pet active and agile, It is easily digestible and supports a healthy immune system, Fortified with Vitamins and Minerals help to keep your pet active and healthy, Purepet is an economical diet that can be served as a whole meal, fulfilling all the nutrional needs of your pet"),
                              ],
                              onExpansionChanged: (value) {
                                viewModel.onExpansionChanged(value);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 50,
                          width: 200,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Palette.blue3)),
                              onPressed: () {
                                viewModel.addtoCart();
                              },
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Palette.mainWhite,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Palette.mainWhite),
            ),
          )),
        );
      },
    );
  }
}
