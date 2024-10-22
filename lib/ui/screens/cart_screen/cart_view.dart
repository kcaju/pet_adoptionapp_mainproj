import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/cart_screen/cart_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/cart_screen/widget/carttab_view.dart';
import 'package:stacked/stacked.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CartViewmodel>.reactive(
      viewModelBuilder: () {
        return CartViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.fourth,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Palette.first,
            leading: IconButton(
                onPressed: () {
                  viewModel.goBck();
                },
                icon: Icon(
                  Icons.pets,
                  color: Palette.mainWhite,
                )),
            title: Text(
              "My Cart",
              style: TextStyle(color: Palette.mainWhite),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.separated(
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CarttabView();
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 5),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 80,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total :",
                            style: TextStyle(
                                color: Palette.mainWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Text(
                            "Amount ₹",
                            style: TextStyle(
                                color: Palette.mainWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          // Start checkout process
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Palette.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Proceed to Checkout",
                            style: TextStyle(
                              fontSize: 18,
                              color: Palette.mainWhite,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Palette.first,
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
