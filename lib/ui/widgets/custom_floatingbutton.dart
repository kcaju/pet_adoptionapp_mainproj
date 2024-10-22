import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

class CustomFloatingbutton extends StatelessWidget {
  const CustomFloatingbutton({super.key, this.onPressed, this.pet});
  final VoidCallback? onPressed;
  final String? pet;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: 98,
      child: FloatingActionButton(
        splashColor: Palette.blue6,
        backgroundColor: Palette.grey1,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: Text(
            "Sell your $pet",
            style: TextStyle(
                color: Palette.mainWhite,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
