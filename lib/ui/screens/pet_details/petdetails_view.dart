import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/constants/assets.gen.dart';
import 'package:petadpotion_app/ui/screens/pet_details/petdetails_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PetdetailsView extends StatelessWidget {
  const PetdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetdetailsViewmodel>.reactive(
      viewModelBuilder: () {
        return PetdetailsViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Palette.mainblack,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Assets.images.dog2.path))),
                  ),
                ),
                Container(
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        //details column
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Text(
                                      "price",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.pin_drop_sharp,
                                      color: Palette.brown,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "location",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Palette.blueGrey,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sex",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "data",
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Age",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "data",
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Color",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "data",
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundImage:
                                          Assets.images.profile1.image().image,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Owned by :",
                                          style: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Owner name",
                                          style: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      child: Icon(
                                        Icons.call,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                //description
                                Text(
                                    " There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.")
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Palette.blue1)),
                              onPressed: () {
                                viewModel.navigate();
                              },
                              child: Text(
                                "Adopt me",
                                style: TextStyle(
                                    color: Palette.mainblack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Palette.mainWhite),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
