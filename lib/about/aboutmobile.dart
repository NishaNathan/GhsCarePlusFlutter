import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/constants/stringres.dart';

class AboutMobileWidget extends StatefulWidget {
  const AboutMobileWidget({super.key});

  @override
  State<AboutMobileWidget> createState() => _AboutMobileWidgetState();
}

class _AboutMobileWidgetState extends State<AboutMobileWidget> {
  final List<Map<String, dynamic>> gridList = [
    {
      'count': '3000',
      'icon': FontAwesomeIcons.userDoctor,
      'desc': 'happy patients'
    },
    {
      'count': '2200',
      'icon': FontAwesomeIcons.bedPulse,
      'desc': 'Performed treatments'
    },
    {
      'count': '24',
      'icon': FontAwesomeIcons.microscope,
      'desc': 'years of experience'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: (width > 700 && width < 1000)
          ? MediaQuery.of(context).size.height * 1.03
          : MediaQuery.of(context).size.height * 1,
      child: Column(
        children: [
          Text(
            'About Us'.toUpperCase(),
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            aboutheading,
            style: const TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(child: Image.asset(aboutimage, fit: BoxFit.cover)),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              aboutdesc,
              style: TextStyle(
                height: 1.5,
                color: greyColor,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: textColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: FaIcon(
                              gridList[0]['icon'],
                              color: textColor,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  gridList[0]['count'],
                                  style:
                                      TextStyle(color: textColor, fontSize: 30),
                                ),
                                Text('${gridList[0]['desc']}'.toUpperCase())
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: textColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: FaIcon(
                              gridList[1]['icon'],
                              color: textColor,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  gridList[1]['count'],
                                  style:
                                      TextStyle(color: textColor, fontSize: 30),
                                ),
                                Text('${gridList[1]['desc']}'.toUpperCase())
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: textColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: FaIcon(
                              gridList[2]['icon'],
                              color: textColor,
                              size: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  gridList[2]['count'],
                                  style:
                                      TextStyle(color: textColor, fontSize: 30),
                                ),
                                Text('${gridList[2]['desc']}'.toUpperCase())
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
