import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard(
      {super.key,
      required this.url,
      required this.petname,
      required this.price,
      this.removeFavt});
  final String url, petname;
  final num price;
  final VoidCallback? removeFavt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Palette.blue1,
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Palette.mainblack,
                image: DecorationImage(
                    fit: BoxFit.cover, image: CachedNetworkImageProvider(url))),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                petname,
                style: TextStyle(
                    color: Palette.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "$price ₹",
                style: TextStyle(
                    color: Palette.mainblack,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: removeFavt,
              icon: Icon(
                Icons.heart_broken,
                color: Palette.red,
                size: 30,
              )),
        ],
      ),
    );

    // Card(
    //   color: Palette.blue1,
    //   child: ListTile(
    //     leading: CircleAvatar(
    //       radius: 40,
    //       backgroundImage: CachedNetworkImageProvider(
    //           "https://static.vecteezy.com/system/resources/thumbnails/023/595/164/small_2x/rabbit-in-the-forest-at-sunset-animal-in-nature-easter-bunny-wildlife-scene-generative-ai-photo.jpg"),
    //     ),
    //     title: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Text(
    //           "Pet name",
    //           style: TextStyle(
    //               color: Palette.mainblack,
    //               fontWeight: FontWeight.bold,
    //               fontSize: 18),
    //         ),
    //         InkWell(
    //           onTap: () {},
    //           child: Icon(
    //             size: 32,
    //             Icons.heart_broken,
    //             color: Palette.red,
    //           ),
    //         )
    //       ],
    //     ),
    //     subtitle: Text(
    //       "price",
    //       style: TextStyle(color: Palette.mainblack, fontSize: 16),
    //     ),
    //   ),
    // );
  }
}
