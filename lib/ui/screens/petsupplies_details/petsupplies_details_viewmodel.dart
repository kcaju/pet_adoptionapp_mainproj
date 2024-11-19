import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/widgets/custom_textfield.dart';
import 'package:stacked/stacked.dart';

class PetsuppliesDetailsViewmodel extends BaseViewModel {
  var suppliesOrderDetails =
      FirebaseFirestore.instance.collection("Suppliesorderdetails");
  //naviagtion
  goBack() {
    navigationService.back();
  }

  Future<void> showOrderDialog(BuildContext context, String name, String url,
      num price, String status, num qty) async {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final addressController = TextEditingController();
    final formkey = GlobalKey<FormState>();

    // Check if the pet is already in the favorite list
    final querySnapshot =
        await suppliesOrderDetails.where('product', isEqualTo: name).get();
    if (querySnapshot.docs.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            scrollable: true,
            title: Text(
              "Place Your Order",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Container(
              height: 400,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          "https://mrwallpaper.com/images/thumbnail/pink-kawaii-peeking-cat-q1h39t170m4uzskg.jpg"))),
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextfield(
                          isPhone: false,
                          data: "Enter your Name",
                          controller: nameController),
                      CustomTextfield(
                          isPhone: true,
                          data: "Enter your Phone-number",
                          controller: phoneController),
                      Text(
                        "Deliver to:",
                        style: TextStyle(
                            color: Palette.mainblack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      CustomTextfield(
                          isPhone: false,
                          maxlines: 3,
                          data: "Enter your Address",
                          controller: addressController),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Palette.mainblack)),
                onPressed: () async {
                  if (formkey.currentState!.validate()) {
                    await suppliesOrderDetails.add({
                      "name": nameController.text,
                      "price": price,
                      "product": name,
                      "phone": phoneController.text,
                      "url": url,
                      "address": addressController.text,
                      "status": status,
                      "quantity": qty
                    });

                    Navigator.of(context).pop();
                    navigationService.navigateTo(Routes.cartView);
                  }
                },
                child: Text(
                  "Place the Order",
                  style: TextStyle(
                    color: Palette.green1,
                    fontSize: 15,
                  ),
                ),
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Palette.mainblack)),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Palette.green1,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Palette.green1,
          content: Text(
            "Already added to cart",
            style: TextStyle(
                color: Palette.mainblack,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          )));
    }
    notifyListeners();
  }
}
