import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonButtonWidget extends StatelessWidget {
  CommonButtonWidget({
    super.key,
    this.width,
    this.height,
    required this.btnText,
    required this.onPressed,
    required this.borderRadius,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
  });

  double? width;
  double? height;
  String btnText;
  final Function()? onPressed;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              backgroundColor, 
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius, 
            side: BorderSide(color: borderColor),
          ),
        ),
        onPressed: onPressed,
        child: Text(btnText,style: const TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
