import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Palette.blue1,
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: CachedNetworkImageProvider(
              "https://static.vecteezy.com/system/resources/thumbnails/023/595/164/small_2x/rabbit-in-the-forest-at-sunset-animal-in-nature-easter-bunny-wildlife-scene-generative-ai-photo.jpg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pet name",
              style: TextStyle(
                  color: Palette.mainblack,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                size: 32,
                Icons.heart_broken,
                color: Palette.red,
              ),
            )
          ],
        ),
        subtitle: Text(
          "price",
          style: TextStyle(color: Palette.mainblack, fontSize: 16),
        ),
      ),
    );
  }
}
