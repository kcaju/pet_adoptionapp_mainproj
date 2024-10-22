import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/dogs_list/tab/dogtab_viewmodel.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stacked/stacked.dart';

class DogTabView extends StatelessWidget {
  const DogTabView(
      {super.key,
      required this.name,
      required this.location,
      required this.url,
      required this.price});
  final String name, location, url;
  final num price;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DogtabViewmodel>.reactive(
      viewModelBuilder: () {
        return DogtabViewmodel();
      },
      builder: (context, viewModel, child) {
        return Container(
          height: 200,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Palette.blue4,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(50),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: url,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Shimmer.fromColors(
                      direction: ShimmerDirection.btt,
                      baseColor: Palette.mainWhite,
                      highlightColor: Palette.grey,
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(50),
                          ),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "$price₹",
                      style: TextStyle(
                          color: Palette.mainblack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.pin_drop,
                          color: Palette.mainblack,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              color: Palette.mainblack,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Palette.third, borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
}
