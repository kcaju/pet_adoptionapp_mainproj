import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/app/app.router.dart';
import 'package:petadpotion_app/app/utils.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:stacked/stacked.dart';

class PetdetailsViewmodel extends BaseViewModel {
  var favoriteList = FirebaseFirestore.instance.collection("Favoritelist");

  Future<void> isFav({
    required String petId,
    String? url,
    num? price,
    String? petname,
    BuildContext? context,
  }) async {
    // Check if the pet is already in the favorite list
    final querySnapshot =
        await favoriteList.where('petId', isEqualTo: petId).get();
    if (querySnapshot.docs.isEmpty) {
      // If not, add it
      await favoriteList.add({
        'petId': petId,
        'petname': petname,
        'image': url,
        'price': price,
      });
    }
    notifyListeners();
    ScaffoldMessenger.of(context!).showSnackBar(SnackBar(
        backgroundColor: Palette.green1,
        content: Text(
          "Added to favourites",
          style: TextStyle(
              color: Palette.mainblack,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        )));
  }

  Future<void> removeFav(String petId, BuildContext context) async {
    final querySnapshot =
        await favoriteList.where('petId', isEqualTo: petId).get();
    for (var doc in querySnapshot.docs) {
      await favoriteList.doc(doc.id).delete();
    }
    notifyListeners();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Palette.green1,
        content: Text(
          "Removed from favourites",
          style: TextStyle(
              color: Palette.mainblack,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        )));
  }

  // Future<void> isFav({
  //   required String petId,
  //   String? url,
  //   num? price,
  //   String? petname,
  // }) async {

  // // Check if the pet is already saved
  // final querySnapshot =
  //     await favoriteList.where('petname', isEqualTo: petname).get();

  // if (querySnapshot.docs.isEmpty) {
  //   // Not saved, add to favorites
  //   await favoriteList.add({
  //     'petId': petId, // Save the pet ID for reference
  //     'petname': petname,
  //     'image': url,
  //     'price': price,
  //   });
  //   isSaved = true; // Set isSaved to true after adding to favorites
  // } else {
  //   // Pet is already in favorites, delete all documents in the collection
  //   for (var doc in querySnapshot.docs) {
  //     await favoriteList.doc(doc.id).delete();
  //   }
  //   print("All pets removed from favorites.");
  //   isSaved = false; // Set isSaved to false after removing from favorites
  // }

  // notifyListeners();
  // }

  // Future<void> checkIfSaved(String petname) async {
  //   final querySnapshot =
  //       await favoriteList.where('petname', isEqualTo: petname).get();
  //   isSaved = querySnapshot.docs.isNotEmpty;
  //   notifyListeners();
  // }

  navigate(String name, String url, num price) {
    navigationService.navigateTo(Routes.confirmadoptionView,
        arguments:
            ConfirmadoptionViewArguments(name: name, price: price, url: url));
  }

  goBack() {
    navigationService.back();
  }
}
