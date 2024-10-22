import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/dogs_list/doglist_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/dogs_list/tab/dog_tab_view.dart';
import 'package:petadpotion_app/ui/widgets/add_pets_bottomsheet.dart';
import 'package:petadpotion_app/ui/widgets/custom_floatingbutton.dart';
import 'package:stacked/stacked.dart';

class DoglistView extends StatelessWidget {
  const DoglistView(
      {super.key,
      required this.dogData,
      required this.id,
      required this.url,
      required this.breed,
      required this.category});
  final Map<String, dynamic> dogData;
  final String id, url, breed, category;

  @override
  Widget build(BuildContext context) {
    final dogData =
        ModalRoute.of(context)!.settings.arguments as DoglistViewArguments;

    var dogSubCollection = FirebaseFirestore.instance
        .collection("Dogbreeds")
        .doc(dogData.id)
        .collection(dogData.breed.toLowerCase());
    return ViewModelBuilder<DoglistViewmodel>.reactive(
      viewModelBuilder: () {
        return DoglistViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          floatingActionButton: CustomFloatingbutton(
            pet: dogData.breed,
            onPressed: () async {
              QuerySnapshot subdataSnapshot = await dogSubCollection.get();
              Map<String, Map<String, dynamic>> subdata = {
                for (var doc in subdataSnapshot.docs)
                  doc.id: doc.data() as Map<String, dynamic>
              };

              showModalBottomSheet(
                backgroundColor: Palette.fourth,
                isScrollControlled: true,
                context: context,
                builder: (context) => AddPetsBottomsheet(
                    category: dogData.category,
                    collectionName: "Dogbreeds",
                    subId: dogSubCollection.id,
                    breed: dogData.breed,
                    data: subdata,
                    documentId: dogData.id),
              );
            },
          ),
          appBar: AppBar(
            backgroundColor: Palette.first,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  viewModel.goBack();
                },
                icon: Icon(
                  Icons.pets,
                  size: 28,
                  color: Palette.mainWhite,
                )),
            title: Text(
              "Pick your Buddy",
              style: TextStyle(
                  color: Palette.mainWhite, fontWeight: FontWeight.bold),
            ),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream: dogSubCollection.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              final subCollectionDocuments = snapshot.data!.docs;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     height: 250,
                  //     decoration: BoxDecoration(
                  //       color: Palette.blueGrey,
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     child: Column(
                  //       children: [
                  //         Container(
                  //           height: 200,
                  //           decoration: BoxDecoration(
                  //             color: Palette.blueGrey,
                  //             image: DecorationImage(
                  //                 fit: BoxFit.cover,
                  //                 image: CachedNetworkImageProvider(
                  //                     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8x1-7sQlvgNwQSNaGYYqOTvAnyXNZo1wFqw&s")),
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "${dogData.breed}s :",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontWeight: FontWeight.w800,
                          fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Your Pawisitive Friend",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: GridView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                        itemCount: subCollectionDocuments.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 15,
                            mainAxisExtent: 350),
                        itemBuilder: (context, index) {
                          Map<String, dynamic> subData =
                              subCollectionDocuments[index].data()
                                  as Map<String, dynamic>;
                          return InkWell(
                              onTap: () {
                                viewModel.onTap(subData, dogData.id);
                              },
                              child: DogTabView(
                                  name: subData['name'],
                                  location: subData['location'],
                                  url: subData['url'],
                                  price: subData['price']));
                        }),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
