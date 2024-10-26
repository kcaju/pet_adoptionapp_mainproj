import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/order_details/orderdetails_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OrderdetailsView extends StatelessWidget {
  const OrderdetailsView(
      {super.key,
      required this.orderid,
      required this.phone,
      required this.name,
      required this.petname,
      required this.address,
      required this.image,
      required this.status,
      required this.price,
      required this.currentId});
  final String orderid, phone, name, petname, address, image, status, currentId;
  final num price;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderdetailsViewmodel>.reactive(
      viewModelBuilder: () {
        return OrderdetailsViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  viewModel.toPetscart();
                },
                icon: Icon(
                  Icons.pets,
                  color: Palette.mainWhite,
                )),
            backgroundColor: Palette.first,
            centerTitle: true,
            title: Text(
              "Ordered Details",
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Palette.mainWhite),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(image))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Petname: $petname",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Palette.mainblack,
                      fontSize: 22),
                ),
                Text(
                  "Price: $price ₹",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Palette.mainblack,
                      fontSize: 22),
                ),
                Text(
                  "Order ID:# $orderid",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Palette.mainblack,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Delivery Address:",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Palette.mainblack,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "$name",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Palette.mainblack,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "$phone",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Palette.mainblack,
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$address",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Palette.mainblack,
                      fontSize: 20),
                ),
                Spacer(),
                Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Palette.grey1)),
                        onPressed: () async {
                          // Delete the order from Firestore
                          await FirebaseFirestore.instance
                              .collection("Orderdetails")
                              .doc(currentId)
                              .delete();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Palette.green1,
                              content: Text(
                                "Order cancelled successfully",
                                style: TextStyle(
                                    color: Palette.mainblack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )));

                          // Navigate back
                          viewModel.toGoback();
                        },
                        child: Text(
                          "Cancel Order",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Palette.red,
                              fontSize: 20),
                        )))
              ],
            ),
          ),
        );
      },
    );
  }
}
