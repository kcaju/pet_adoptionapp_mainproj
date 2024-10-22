import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.data,
    required this.controller,
    this.maxlines = 1,
  });
  final String data;
  final TextEditingController controller;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
      maxLines: maxlines,
      controller: controller,
      validator: (value) {
        if (value != null && value.isNotEmpty) {
          return null;
        } else {
          return "must fill";
        }
      },
      decoration: InputDecoration(
          label: Text(data),
          labelStyle: TextStyle(
              color: Palette.mainblack,
              fontWeight: FontWeight.w600,
              fontSize: 18)),
    );
  }
}
