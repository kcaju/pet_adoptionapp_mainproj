import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/petsupplies_details/petsupplies_details_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetsuppliesDetailsView extends StatelessWidget {
  const PetsuppliesDetailsView(
      {super.key,
      required this.name,
      required this.desc,
      required this.size,
      required this.url,
      required this.benefits,
      required this.price,
      this.isAccessory = false});
  final String name, desc, size, url, benefits;
  final num price;
  final bool isAccessory;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetsuppliesDetailsViewmodel>.reactive(
      viewModelBuilder: () {
        return PetsuppliesDetailsViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Palette.first,
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
              isAccessory ? "Unique Pet Accessories" : "Feed them well",
              style: TextStyle(
                  color: Palette.mainWhite, fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Container(
              padding: EdgeInsets.all(15),
              // height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(url)),
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
                              name,
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
                                  "$price ₹",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Palette.mainblack,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Size: $size",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Palette.mainblack,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Description:",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Palette.mainblack,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              desc,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Palette.mainblack,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              isAccessory ? "" : "Benefits:",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Palette.mainblack,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              isAccessory ? "" : benefits,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Palette.mainblack,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Palette.blue3)),
                            onPressed: () async {
                              // viewModel.addtoCart();

                              viewModel.showOrderDialog(
                                  context, name, url, price, "Order Placed", 1);
                            },
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(
                                  color: Palette.mainWhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ))),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Palette.third),
            ),
          ),
        );
      },
    );
  }
}
