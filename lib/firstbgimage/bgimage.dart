import 'package:flutter/material.dart';
import 'package:ghscareplus/constants/imageres.dart';

class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
        height: width > 600
            ? MediaQuery.of(context).size.height * 0.8
            : null,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          bgimage,
          fit: BoxFit.fill,
        ));
  }
}
