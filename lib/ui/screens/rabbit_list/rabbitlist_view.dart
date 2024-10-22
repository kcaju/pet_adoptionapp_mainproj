import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/rabbit_list/rabbitlist_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/rabbit_list/tab/rabbit_tab_view.dart';
import 'package:stacked/stacked.dart';

class RabbitlistView extends StatelessWidget {
  const RabbitlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RabbitlistViewmodel>.reactive(
      viewModelBuilder: () {
        return RabbitlistViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Palette.blue4,
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
                    (index) => InkWell(
                      onTap: () {
                        viewModel.onTap(); //to details screen
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                      "https://riverforestvets.ie/wp-content/uploads/2018/06/rabbit-baby-and-carrot2.jpg")),
                              borderRadius: BorderRadius.circular(10),
                              color: Palette.blueGrey),
                        ),
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
                  "Raise the hare",
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
                        mainAxisExtent: 290),
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          viewModel.onTap();
                        },
                        child: RabbitTabView())),
              ),
            ],
          ),
        );
      },
    );
  }
}
