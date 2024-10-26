import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/pet_supplies/tabs/pet_medicine/petmedicine_viewmodel.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';

class PetmedicineView extends StatelessWidget {
  const PetmedicineView({super.key});

  @override
  Widget build(BuildContext context) {
    var petMedicines = FirebaseFirestore.instance.collection("Petmedicines");

    return ViewModelBuilder<PetmedicineViewmodel>.reactive(
      viewModelBuilder: () {
        return PetmedicineViewmodel();
      },
      builder: (context, viewModel, child) {
        return StreamBuilder<QuerySnapshot>(
          stream: petMedicines.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            // Extract documents into a list
            final documents = snapshot.data!.docs;

            return GridView.builder(
              padding: EdgeInsets.all(8),
              itemCount: documents.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  mainAxisExtent: 280),
              itemBuilder: (context, index) {
                Map<String, dynamic> data =
                    documents[index].data()! as Map<String, dynamic>;
                return InkWell(
                  onTap: () {
                    viewModel.onTap(data['name'], data['url'], data['size'],
                        data['desc'], data['benefits'], data['price'], false);
                  },
                  child: Container(
                    height: 280,
                    width: 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 150,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                imageUrl: data['url'],
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    Shimmer.fromColors(
                                  direction: ShimmerDirection.btt,
                                  baseColor: Palette.mainWhite,
                                  highlightColor: Palette.grey,
                                  child: Container(
                                    height: 250,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              overflow: TextOverflow.fade,
                              data['name'],
                              style: TextStyle(
                                  color: Palette.mainblack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "${data['price'].toString()} ₹",
                            style: TextStyle(
                                color: Palette.mainblack,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Palette.third),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
