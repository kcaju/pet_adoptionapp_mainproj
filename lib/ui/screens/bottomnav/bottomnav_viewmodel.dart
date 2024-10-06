import 'package:flutter/material.dart';
import 'package:petadpotion_app/ui/screens/favourite/favourite_view.dart';
import 'package:petadpotion_app/ui/screens/home/home_view.dart';
import 'package:petadpotion_app/ui/screens/pet_supplies/petsupply_view.dart';
import 'package:petadpotion_app/ui/screens/profile/profile_view.dart';
import 'package:stacked/stacked.dart';

class BottomnavViewmodel extends BaseViewModel {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomeView(),
    FavouriteView(),
    PetsupplyView(),
    ProfileView()
  ];
  bottomNavOnTap(int value) {
    selectedIndex = value;
    notifyListeners();
  }
}
