import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/finddoctor/doctorsmobile.dart';

class OurDoctors extends StatefulWidget {
  const OurDoctors({super.key});

  @override
  State<OurDoctors> createState() => _OurDoctorsState();
}

class _OurDoctorsState extends State<OurDoctors> {
  late List<bool> isHoverDoc;

  @override
  void initState() {
    super.initState();
    isHoverDoc = List.generate(3, (index) => false);
  }

  final List<Map<String, dynamic>> gridList = [
    {
      'doctorname': 'Dr. Caroline Grant',
      'designation': 'General Surgeon',
      'image': doctor1,
    },
    {
      'doctorname': 'Dr. Maria Angel',
      'designation': 'Plastic surgeon',
      'image': doctor2,
    },
    {
      'doctorname': 'Nathan Mullins',
      'designation': 'Dentist',
      'image': doctor4,
    },
  ];
  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return width > 1000
        ? Padding(
            padding: const EdgeInsets.all(40.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Column(
                children: [
                  Text(
                    'our doctors'.toUpperCase(),
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Qualified Doctors',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 60.0,
                                  mainAxisSpacing: 20.0,
                                  childAspectRatio: 1.7 / 1.5),
                          itemCount: gridList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              color: Colors.white,
                              elevation: 5,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onEnter: (_) => setState(
                                        () => isHoverDoc[index] = true),
                                    onExit: (_) => setState(
                                        () => isHoverDoc[index] = false),
                                    child: Container(
                                      width: 200,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        boxShadow: isHoverDoc[index]
                                            ? null
                                            : [
                                                BoxShadow(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  spreadRadius: 3,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: isHoverDoc[index]
                                              ? textColor
                                              : Colors.white,
                                          width: 10,
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              gridList[index]['image']),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    gridList[index]['doctorname'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    gridList[index]['designation'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: textColor),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.facebook,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.instagram,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.twitter,
                                        color: Colors.grey,
                                        size: 20,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ))
        : const DoctorsMobile();
  }
}
