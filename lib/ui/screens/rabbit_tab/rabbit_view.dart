import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/rabbit_tab/rabbit_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RabbitView extends StatelessWidget {
  const RabbitView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RabbitViewmodel>.reactive(
      viewModelBuilder: () {
        return RabbitViewmodel();
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
                itemCount: viewModel.rabbitBreed.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 300,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    viewModel.navigate();
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: CachedNetworkImageProvider(
                                        viewModel.rabbitBreed[index]['url'])),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(50)),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Text(
                            viewModel.rabbitBreed[index]['breed'],
                            style: TextStyle(
                                color: Palette.mainblack,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Palette.third,
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
