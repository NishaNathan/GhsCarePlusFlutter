import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class TextBoxWidget extends StatelessWidget {
  TextBoxWidget(
      {required this.fillColor,
      this.hintText,
      this.height,
      super.key,
      this.width,
      this.cursorHeight,
      this.fontColor,
      this.maxLength,
      this.inputFormatters,
      this.controller,
      required this.focusedborderSide,
      this.hintTextColor,
      required this.enabledBorderColor,
      this.cursorColor,
      this.fontSize});
  double? fontSize;
  final Color fillColor;
  final String? hintText;
  final double? height;
  final double? width;
  double? cursorHeight;
  Color? fontColor;
  int? maxLength;
  List<TextInputFormatter>? inputFormatters;
  TextEditingController? controller;
  Color? hintTextColor;
  InputBorder focusedborderSide;
  Color? cursorColor;
  InputBorder enabledBorderColor;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      stepWidth: MediaQuery.of(context).size.width,
      child: Expanded(
        child: TextFormField(
          controller: controller,
          style: TextStyle(color: fontColor),
          cursorColor: cursorColor, // Colors.white,
          cursorHeight: cursorHeight,
          maxLength: maxLength,
          inputFormatters: inputFormatters,
          //FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+')),
          decoration: InputDecoration(
              filled: true,
              fillColor:
                  fillColor, //Colors.transparent, // Set background color to transparent
              hintText: hintText,
              hintStyle: TextStyle(
                  color: hintTextColor, //Colors.grey.shade500,
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize),
              focusedBorder: focusedborderSide,
              /* const UnderlineInputBorder(
              borderSide: focusedborderSide, */ //Colors.white),
        
              enabledBorder:
                  enabledBorderColor /* const UnderlineInputBorder(
              borderSide: BorderSide(
                color: //Colors.white70,
              ),
            ), */
              ),
        ),
      ),
    );
  }
}
