import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';

class ContactUsMobile extends StatefulWidget {
  const ContactUsMobile({super.key});

  @override
  State<ContactUsMobile> createState() => _ContactUsMobileState();
}

class _ContactUsMobileState extends State<ContactUsMobile> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        //shape: BoxShape.circle,
        gradient: radiantColor,
      ),
      height: width < 600
          ? MediaQuery.of(context).size.height * 1.35
          : MediaQuery.of(context).size.height * 1.2,
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'GHS',
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
                  'template is made with ',
                  style: TextStyle(color: Colors.white),
                ),
                FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                  size: 8,
                ),
                Text(
                  ' by @NishaVignesh',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
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
            SizedBox(
              height: 30.0,
            ),
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
            SizedBox(
              height: 30.0,
            ),
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
            SizedBox(
              height: 30.0,
            ),
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
                  'Anna nagar,chennai',
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
                  '7871052682',
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
    );
  }
}
