import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

class FavouriteCard extends StatelessWidget {
  const FavouriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Palette.blue2,
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundColor: Palette.grey,
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
