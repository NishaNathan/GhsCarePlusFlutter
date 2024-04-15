import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/contact/contactmobile.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return width > 1000
        ? Container(
            decoration: BoxDecoration(
              //shape: BoxShape.circle,
              gradient: radiantColor,
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 30.0, 20.0, 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    //color: Colors.pink.shade100,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GHS CAREPLUS LAB',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, lorem maximus consectetur adipiscing elit. Donec malesuada lorem maximus mauris.',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.pinterest,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Copyright ©2024 All rights reserved | This',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              'site is designed and developed by',
                              style: TextStyle(color: Colors.white),
                            ),
                            // FaIcon(
                            //   FontAwesomeIcons.heart,
                            //   color: Colors.white,
                            //   size: 8,
                            // ),
                            Text(
                              ' Nivi Tech',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  SizedBox(
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Departments',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Neurology',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Opthalmology',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Nuclear Magnetic',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Surgical',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Cardiology',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Dental',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  SizedBox(
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Links',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Home',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'About',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Departments',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Doctors',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Blogs',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Pricing',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Contact',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  SizedBox(
                    //color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Services',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Emergency Services',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Qualified Doctors',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.rightLong,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Outdoors Checkup',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.arrowRight,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '24 Hours Services',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  SizedBox(
                    //color: Colors.pink.shade100,
                    width: MediaQuery.of(context).size.width * 0.15,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Have a Questions?',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.locationDot,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Chennai,TN',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.phone,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '9884032603',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.envelope,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'ghs@ywhoo.com',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : const ContactUsMobile();
  }
}
