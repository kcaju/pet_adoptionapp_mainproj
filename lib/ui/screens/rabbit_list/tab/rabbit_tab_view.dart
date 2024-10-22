import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/rabbit_list/tab/rabbittab_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RabbitTabView extends StatelessWidget {
  const RabbitTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RabbittabViewmodel>.reactive(
      viewModelBuilder: () {
        return RabbittabViewmodel();
      },
      builder: (context, viewModel, child) {
        return Container(
          height: 200,
          width: 150,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                                "https://assets.newatlas.com/dims4/default/ad1194b/2147483647/strip/true/crop/1997x1331+2+0/resize/1200x800!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F5f%2F5c%2F348d6a3a4e9fb7d90f1a26e0c305%2Fdepositphotos-34452711-l-2015.jpg")),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(50)),
                        color: Palette.blueGrey),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Palette.red,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "name",
                    style: TextStyle(
                        color: Palette.mainblack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.male,
                    color: Palette.mainblack,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.pin_drop,
                    color: Palette.mainblack,
                  )
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Palette.blue4, borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
}
