import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/cart_screen/widget/carttab_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CarttabView extends StatelessWidget {
  const CarttabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CarttabViewmodel>.reactive(
      viewModelBuilder: () {
        return CarttabViewmodel();
      },
      builder: (context, viewModel, child) {
        return Stack(
          children: [
            SizedBox(
              height: 100,
            ),
            Card(
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: CachedNetworkImageProvider(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNklpnKx15j7N2_uvz8N5QiE6SnAWPq7WwjQ&s"))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "Price",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                viewModel.toDecrement();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Palette.green1,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.remove,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${viewModel.qty}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                viewModel.toIncrement();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Palette.green1,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 0,
                right: 5,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Palette.grey.withOpacity(0.4),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.close,
                      size: 20,
                    ),
                  ),
                )),
          ],
        );
      },
    );
  }
}
