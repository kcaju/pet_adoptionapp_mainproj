import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/confirm_adoption/confirmadoption_viewmodel.dart';
import 'package:petadpotion_app/ui/widgets/custom_textfield.dart';
import 'package:stacked/stacked.dart';

class ConfirmadoptionView extends StatelessWidget {
  const ConfirmadoptionView(
      {super.key, required this.name, required this.price, required this.url});
  final String name, url;
  final num price;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmadoptionViewmodel>.reactive(
      onViewModelReady: (viewModel) {
        viewModel.init();
      },
      onDispose: (viewModel) {
        viewModel.disPose();
      },
      viewModelBuilder: () {
        return ConfirmadoptionViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.fourth,
          appBar: AppBar(
            backgroundColor: Palette.first,
            leading: IconButton(
                onPressed: () {
                  viewModel.goBack();
                },
                icon: Icon(
                  Icons.pets,
                  color: Palette.mainWhite,
                )),
            centerTitle: true,
            title: Text(
              "Here for You & Them",
              style: TextStyle(
                  color: Palette.mainWhite, fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: Palette.green.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: Form(
                  key: viewModel.formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: Palette.grey,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(url)),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Pet Name: $name",
                        style: TextStyle(
                            color: Palette.mainblack,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Price: $price ₹",
                        style: TextStyle(
                            color: Palette.mainblack,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      CustomTextfield(
                          data: "Enter your Name",
                          controller: viewModel.orderingPersonName),
                      CustomTextfield(
                          data: "Enter your Phone-number",
                          controller: viewModel.phoneNumber),
                      Text(
                        "Deliver to:",
                        style: TextStyle(
                            color: Palette.mainblack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      CustomTextfield(
                          maxlines: 3,
                          data: "Enter your Address",
                          controller: viewModel.address),
                      SizedBox(height: 20),
                      Center(
                        child: Image.asset(
                          Assets.images.adopt.path,
                          height: 150,
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Palette.mainblack)),
                          onPressed: () async {
                            var orderDetails = FirebaseFirestore.instance
                                .collection("Orderdetails");
                            if (viewModel.formkey.currentState!.validate()) {
                              //razorpay payment
                              viewModel.checkout(
                                  price, viewModel.phoneNumber.text);
                              await orderDetails.add({
                                "name": viewModel.orderingPersonName.text,
                                "phone": viewModel.phoneNumber.text,
                                "address": viewModel.address.text,
                                "petname": name,
                                "price": price,
                                "image": url,
                              });
                            }
                          },
                          child: Text(
                            "Proceed to Payment",
                            style: TextStyle(
                                color: Palette.mainWhite,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
