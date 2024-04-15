import 'dart:core';

import 'package:flutter/material.dart';

class DateTimePicker extends StatelessWidget {
  DateTimePicker(
      {required this.fillColor,
      this.hintText,
      this.height,
      super.key,
      this.width,
      required this.onTap,
      this.controller,
      this.showCursor,
      this.fontColor});

  final Color fillColor;
  final String? hintText;
  final double? height;
  final double? width;
  final Function() onTap;
  TextEditingController? controller;
  bool? showCursor;
  Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        style: TextStyle(color: fontColor),
        controller: controller,
        onTap: onTap,
        showCursor: showCursor,
        decoration: InputDecoration(
          //suffixIcon: iconbutton,
          filled: true,
          fillColor: fillColor,
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.grey.shade500, fontWeight: FontWeight.w600),
          //contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
