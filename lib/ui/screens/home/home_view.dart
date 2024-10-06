import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/birds_tab/bird_view.dart';
import 'package:petadpotion_app/ui/screens/cats_tab/cat_view.dart';
import 'package:petadpotion_app/ui/screens/dogs_tab/dog_view.dart';
import 'package:petadpotion_app/ui/screens/home/home_viewmodel.dart';
import 'package:petadpotion_app/ui/screens/rabbit_tab/rabbit_view.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      viewModelBuilder: () {
        return HomeViewmodel();
      },
      builder: (context, viewModel, child) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: Palette.mainWhite,
            appBar: AppBar(
              backgroundColor: Palette.mainWhite,
              // leading: ClipRRect(
              //   borderRadius: BorderRadius.circular(25),
              //   child: CircleAvatar(
              //     radius: 25,
              //     child: Assets.images.profile1.image(fit: BoxFit.cover),
              //   ),
              // ),
              // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              centerTitle: true,
              title: Text(
                "Welcome to Pets Haus",
                style: TextStyle(
                    color: Palette.mainblack, fontWeight: FontWeight.bold),
              ),
              actions: [
                // Stack(
                //   children: [
                //     Icon(
                //       Icons.notifications,
                //       size: 30,
                //       color: Palette.mainblack,
                //     ),
                //     Positioned(
                //       right: 3,
                //       child: CircleAvatar(
                //         radius: 5,
                //         child: Text(
                //           "0",
                //           style:
                //               TextStyle(color: Palette.mainWhite, fontSize: 7),
                //         ),
                //         backgroundColor: Palette.red,
                //       ),
                //     )
                //   ],
                // ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Assets.images.cart.image(),
                  // Icon(
                  //   Icons.gite,
                  //   size: 35,
                  //   color: Palette.mainblack,
                  // )
                ),
                SizedBox(
                  width: 5,
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   "Search for a pet",
                  //   style: TextStyle(
                  //       color: ColorConstants.mainblack,
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),

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
                    height: 10,
                  ),
                  Text(
                    "Pet Categories",
                    style: TextStyle(
                        fontFamily: Assets.fonts.barlowBold,
                        color: Palette.mainblack,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TabBar(
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                            child: Assets.images.dogs.image(fit: BoxFit.cover),
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
                            child: Assets.images.cat1.image(fit: BoxFit.cover),
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
                            child: Assets.images.bird1.image(fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Tab(
                        text: "Rabbits",
                        icon: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 80,
                            height: 50,
                            child: Assets.images.rab.image(fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                      child: TabBarView(children: [
                    DogView(),
                    CatView(),
                    BirdView(),
                    RabbitView()
                  ])),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
