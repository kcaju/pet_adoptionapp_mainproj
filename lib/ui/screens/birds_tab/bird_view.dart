import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/birds_tab/bird_viewmodel.dart';
import 'package:stacked/stacked.dart';

class BirdView extends StatelessWidget {
  const BirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BirdViewmodel>.reactive(
      viewModelBuilder: () {
        return BirdViewmodel();
      },
      builder: (context, viewModel, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 300,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    viewModel.navigate();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => DogsList(),
                    //     ));
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //     fit: BoxFit.cover,
                                  //     image: NetworkImage("")),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(50)),
                                  color: Palette.blue4),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "breed",
                          style: TextStyle(
                              color: Palette.mainblack,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Palette.amber,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
