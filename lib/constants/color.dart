import 'package:flutter/material.dart';

var radiantColor = const LinearGradient(
  colors: [Color.fromRGBO(1, 83, 143, 1), Color.fromRGBO(1, 130, 161, 1)], //rgba(1,130,161,255) //1, 130, 161 //rgba(1,83,143,255)
  stops: [0.25, 1],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
);

var radiantwhiteColor = const LinearGradient(
  colors: [Color.fromRGBO(240, 240, 240, 1), Color.fromRGBO(255, 255, 255, 1)],
  stops: [1, 1],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
);

var blackColor = Colors.black;

var purpleColor = const Color.fromRGBO(103, 41, 118, 1);//103,41,118,255

var blueColor = const Color.fromRGBO(46, 49, 146, 1);//rgba(46,49,146,255)
var greyColor = const Color.fromRGBO(179, 182, 192, 1);//rgba(179,182,192,255)

var tealColor = const Color.fromRGBO(1, 130, 161, 1);

var textColor = const Color.fromRGBO(1, 83, 143, 1);

var buttonColor = const Color.fromRGBO(237, 132, 46, 1);//rgba(237,132,46,255)


var radiantTextColor = const LinearGradient(
  colors: [Color.fromRGBO(1, 83, 143, 1), Color.fromRGBO(1, 83, 143, 1)],
  stops: [1, 1],
  begin: Alignment.bottomRight,
  end: Alignment.topLeft,
);
