import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/birds_tab/bird_view.dart';
import 'package:petadpotion_app/ui/screens/cats_tab/cat_view.dart';
import 'package:petadpotion_app/ui/screens/dogs_tab/dog_view.dart';
import 'package:petadpotion_app/ui/screens/home/home_viewmodel.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var newPets = FirebaseFirestore.instance.collection("NewPets");
    return ViewModelBuilder<HomeViewmodel>.reactive(
      viewModelBuilder: () => HomeViewmodel(),
      builder: (context, viewModel, child) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Palette.fourth,
            appBar: AppBar(
              backgroundColor: Palette.fourth,
              leading: Icon(null),
              centerTitle: true,
              title: Text(
                "Welcome to Pets Haus",
                style: TextStyle(
                    color: Palette.mainblack, fontWeight: FontWeight.bold),
              ),
              actions: [
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: Assets.images.cart.image(),
                ),
                SizedBox(width: 5)
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Time to adopt, friendship to adore",
                        style: TextStyle(
                            fontFamily: Assets.fonts.barlowBold,
                            color: Palette.blue3,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      // Add this for scrolling
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Recently Added",
                            style: TextStyle(
                                fontFamily: Assets.fonts.barlowBold,
                                color: Palette.mainblack,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          StreamBuilder<QuerySnapshot>(
                            stream: newPets.snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return const Text('Something went wrong');
                              }

                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              // Extract documents into a list
                              final documents = snapshot.data!.docs;

                              return CarouselSlider(
                                  items:
                                      List.generate(documents.length, (index) {
                                    Map<String, dynamic> data = documents[index]
                                        .data()! as Map<String, dynamic>;
                                    return InkWell(
                                      onTap: () {
                                        viewModel.toDetails(
                                            data,
                                            documents[index]
                                                .id); //to details screen
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
                                        child: Container(
                                          height: 250,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Palette.blue4,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                              errorWidget:
                                                  (context, url, error) =>
                                                      const Icon(Icons.error),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                  options: CarouselOptions(
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    height: 250,
                                  ));
                            },
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Pet Categories",
                            style: TextStyle(
                                fontFamily: Assets.fonts.barlowBold,
                                color: Palette.mainblack,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TabBar(
                            labelStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            labelColor: Palette.mainblack,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                text: "Dogs",
                                icon: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    child: Assets.images.one
                                        .image(fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Tab(
                                text: "Cats",
                                icon: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 80,
                                    height: 50,
                                    child: Assets.images.cat1
                                        .image(fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Tab(
                                text: "Birds",
                                icon: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 80,
                                    height: 50,
                                    child: Assets.images.bird1
                                        .image(fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              // Tab(
                              //   text: "Rabbits",
                              //   icon: ClipRRect(
                              //     borderRadius: BorderRadius.circular(10),
                              //     child: Container(
                              //       width: 80,
                              //       height: 50,
                              //       child: Assets.images.rab
                              //           .image(fit: BoxFit.cover),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 500,
                            child: TabBarView(children: [
                              DogView(),
                              CatView(),
                              BirdView(),
                              // RabbitView()
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
