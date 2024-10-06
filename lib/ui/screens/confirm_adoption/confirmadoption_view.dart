import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/confirm_adoption/confirmadoption_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ConfirmadoptionView extends StatelessWidget {
  const ConfirmadoptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmadoptionViewmodel>.reactive(
      viewModelBuilder: () {
        return ConfirmadoptionViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.blueGrey,
          appBar: AppBar(
            backgroundColor: Palette.blue4,
            centerTitle: true,
            title: Text(
              "Here for You & Them ",
              style: TextStyle(
                  color: Palette.mainWhite, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 600,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: Palette.grey,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Name:",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "price:",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "owner :",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
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
                                WidgetStatePropertyAll(Palette.blue3)),
                        onPressed: () {
                          //razorpay
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
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Palette.mainWhite,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
        );
      },
    );
  }
}
