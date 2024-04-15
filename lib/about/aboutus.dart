import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/about/aboutmobile.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/constants/stringres.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
      'count': '4+',
      'icon': FontAwesomeIcons.microscope,
      'desc': 'years of experience'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return width > 1000
        ? SizedBox(
            //color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.75,
                          child: Image.asset(testlababout, fit: BoxFit.cover)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.42,
                        height: MediaQuery.of(context).size.height * 0.75,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Us'.toUpperCase(),
                                style: TextStyle(
                                    color: textColor,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                aboutheading,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                aboutdesc,
                                style: TextStyle(
                                  height: 1.5,
                                  color: greyColor,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: textColor),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: FaIcon(
                                                gridList[0]['icon'],
                                                color: textColor,
                                                size: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    gridList[0]['count'],
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: 30),
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                    child: Text(
                                                        '${gridList[0]['desc']}'
                                                            .toUpperCase()),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: textColor),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: FaIcon(
                                                gridList[1]['icon'],
                                                color: textColor,
                                                size: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    gridList[1]['count'],
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: 30),
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                    child: Text(
                                                        '${gridList[1]['desc']}'
                                                            .toUpperCase()),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: textColor),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: FaIcon(
                                                gridList[2]['icon'],
                                                color: textColor,
                                                size: 30,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    gridList[2]['count'],
                                                    style: TextStyle(
                                                        color: textColor,
                                                        fontSize: 30),
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                    child: Text(
                                                        '${gridList[2]['desc']}'
                                                            .toUpperCase()),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        : const AboutMobileWidget();
  }
}
