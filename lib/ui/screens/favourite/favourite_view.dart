import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/favourite/favourite_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/favourite/widget/favourite_card.dart';
import 'package:stacked/stacked.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    var favoriteList = FirebaseFirestore.instance.collection("Favoritelist");
    return ViewModelBuilder<FavouriteViewmodel>.reactive(
      viewModelBuilder: () {
        return FavouriteViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Palette.fourth,
          appBar: AppBar(
            backgroundColor: Palette.first,
            centerTitle: true,
            leading: Icon(null),
            title: Text(
              "They are waiting for you!!",
              style: TextStyle(
                  color: Palette.mainWhite, fontWeight: FontWeight.bold),
            ),
          ),
          body: StreamBuilder<QuerySnapshot>(
            stream: favoriteList.snapshots(),
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

              return ListView.separated(
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    Map<String, dynamic> data =
                        documents[index].data()! as Map<String, dynamic>;
                    String docId = documents[index].id; // Get document ID
                    return InkWell(
                        onTap: () {
                          viewModel.onTap(data, docId);
                        },
                        child: FavouriteCard(
                          url: data['image'],
                          petname: data['petname'],
                          price: data['price'],
                          removeFavt: () async {
                            await favoriteList
                                .doc(docId)
                                .delete(); // Delete the document
                          },
                        ));
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: documents.length);
            },
          ),
        );
      },
    );
  }
}
