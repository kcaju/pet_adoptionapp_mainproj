import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/pets_cart_screen/petscart_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetscartView extends StatelessWidget {
  const PetscartView({super.key});

  @override
  Widget build(BuildContext context) {
    var orderDetails = FirebaseFirestore.instance.collection("Orderdetails");
    return ViewModelBuilder<PetscartViewmodel>.reactive(
      viewModelBuilder: () {
        return PetscartViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  viewModel.goBack();
                },
                icon: Icon(
                  Icons.pets,
                  color: Palette.mainWhite,
                )),
            backgroundColor: Palette.first,
            centerTitle: true,
            title: Text(
              "Ordered Pets",
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Palette.mainWhite),
            ),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream: orderDetails.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final documents = snapshot.data!.docs;

              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: List.generate(
                      documents.length,
                      (index) {
                        Map<String, dynamic> data =
                            documents[index].data()! as Map<String, dynamic>;
                        return InkWell(
                          onTap: () {
                            viewModel.toOrderedDetails(
                                data, documents[index].id);
                          },
                          child: Card(
                            color: Palette.third,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: CachedNetworkImageProvider(
                                                data['image'])),
                                        shape: BoxShape.rectangle),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data['petname'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Palette.mainblack),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "${data['price'].toString()} ₹",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Palette.mainblack),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                    height: 80,
                                    child: VerticalDivider(
                                      thickness: 2,
                                      color: Palette.blue1,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "OrderId:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Palette.brown),
                                        ),
                                        Text(
                                          data['OrderId'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Palette.mainblack),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                    height: 80,
                                    child: VerticalDivider(
                                      thickness: 2,
                                      color: Palette.blue1,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Status:",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Palette.brown),
                                        ),
                                        Text(
                                          data['status'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Palette.blue3),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
