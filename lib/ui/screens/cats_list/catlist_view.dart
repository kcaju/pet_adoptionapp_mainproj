import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/cats_list/catlist_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/cats_list/tab/cat_tab.dart';
import 'package:stacked/stacked.dart';

class CatlistView extends StatelessWidget {
  const CatlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CatlistViewmodel>.reactive(
      viewModelBuilder: () {
        return CatlistViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Palette.blue4,
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  viewModel.goBack();
                },
                icon: Icon(
                  Icons.pets,
                  size: 26,
                  color: Palette.mainblack,
                )),
            title: Text(
              "Pick your buddy",
              style: TextStyle(
                  color: Palette.mainblack, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Recently Added",
                  style: TextStyle(
                      color: Palette.mainblack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              CarouselSlider(
                  items: List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Palette.blueGrey),
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    height: 250,
                    viewportFraction: 1.0,
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Your Pussycat!",
                  style: TextStyle(
                      color: Palette.mainblack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 15,
                        mainAxisExtent: 250),
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          viewModel.onTap();
                        },
                        child: CatTab())),
              ),
            ],
          ),
        );
      },
    );
  }
}
