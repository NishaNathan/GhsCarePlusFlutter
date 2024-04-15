import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/constants/stringres.dart';

class TestimonialWidget extends StatelessWidget {
  const TestimonialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    /* final CarouselController _controller = CarouselController(); */
    var width = MediaQuery.of(context).size.width;
    final List<Map<String, dynamic>> testimonialList = [
      {
        'name': 'Robert Scott',
        'design': 'Marketing Manager',
        'desc': aboutdesc,
        'image': doctor1
      },
      {
        'name': 'Franklin',
        'design': 'Architect',
        'desc': aboutdesc,
        'image': doctor2
      },
      {
        'name': 'Catherine Litt',
        'design': 'Engineer',
        'desc': aboutdesc,
        'image': doctor4
      },
    ];
    return Container(
      //color: Colors.red,
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      height: width < 600
          ? MediaQuery.of(context).size.height * 0.7
          :  MediaQuery.of(context).size.height * 0.6,
      /* width < 1000
          ? MediaQuery.of(context).size.height * 0.1
          : (width > 600 && width < 1000)
              ? MediaQuery.of(context).size.height * 0.5
              : width < 600
                  ? MediaQuery.of(context).size.height * 1
                  : MediaQuery.of(context).size.height, */
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            'TESTIMONIALS',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            'Happy Customers',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
          ),
          Expanded(
              child: Container(
            height: width > 600
                ? MediaQuery.of(context).size.height * 0.4
                : MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            padding: width < 600
                ? const EdgeInsets.only(left: 20.0, right: 20.0)
                : const EdgeInsets.only(left: 70.0, right: 70.0),
            child: Expanded(
              child: CarouselSlider.builder(
                itemCount: testimonialList.length,
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  viewportFraction: width < 1000 ? 1 : 0.4,
                  /* aspectRatio: width < 600
                      ? 1.3 / 1
                      : (width > 700 && width < 1000)
                          ? 1.5 / 1
                          :1.5 / 1, */
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return SizedBox(
                      width: width > 1000
                          ? MediaQuery.of(context).size.width * 0.3
                          : (width > 600 && width < 1000)
                              ? MediaQuery.of(context).size.width * 0.5
                              : width < 600
                                  ? MediaQuery.of(context).size.width
                                  : null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(testimonialList[index]['desc']),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                      testimonialList[index]['image'])),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    testimonialList[index]['name'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    testimonialList[index]['design'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: textColor,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ));
                },
              ),
            ),
          )),
        ],
      ),
    );
  }
}
