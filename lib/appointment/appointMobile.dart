import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ghscareplus/commonwidget/buttonwidget.dart';
import 'package:ghscareplus/commonwidget/dropdownwidget.dart';
import 'package:ghscareplus/commonwidget/multilinetextfield.dart';
import 'package:ghscareplus/commonwidget/texformfieldwidget.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/stringres.dart';
import 'package:ghscareplus/controller/appointmentcontroller.dart';

class AppointmentMobile extends StatefulWidget {
  const AppointmentMobile({super.key});

  @override
  State<AppointmentMobile> createState() => _AppointmentMobileState();
}

class _AppointmentMobileState extends State<AppointmentMobile> {
  bool isSelectedDoctor = false;
  bool isSelectedDept = false;
  //bool isHovered = false;

  String? doctorselectedValue;

  final AppointmentController appointCtrl = Get.put(AppointmentController());

  List<bool> isHoveredList = List.generate(3, (index) => false);

  final List<String> departmentlist = [
    'Department 1',
    'Department 2',
    'Department 3',
    'Department 4',
    'Department 5',
  ];

  final List<String> doctorlist = [
    'Doctor 1',
    'Doctor 2',
    'Doctor 3',
    'Doctor 4',
    'Doctor 5',
  ];

  final List<Map<String, dynamic>> appointmentList = [
    {
      'skill': 'Easy Booking',
      'icon': FontAwesomeIcons.laptopMedical,
      'desc': servicedesc
    },
    {
      'skill': 'Doctors',
      'icon': FontAwesomeIcons.userDoctor,
      'desc': servicedesc
    },
    {
      'skill': 'Best Price Guarantee',
      'icon': FontAwesomeIcons.handHoldingDollar,
      'desc': servicedesc
    },
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      appointCtrl.testCtrl.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: radiantColor,
          ),
          //height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'WE ARE HERE FOR YOU',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Book an Appointment',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBoxWidget(
                         cursorColor: Colors.white,
                      hintTextColor: Colors.grey.shade500,
                      focusedborderSide: const UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white70,
                      )),
                      enabledBorderColor: const UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white70,
                      )),
                      controller: appointCtrl.nameCtrl,
                      //width: 280,
                      fillColor: Colors.transparent,
                      hintText: 'Your Name',
                      cursorHeight: 25,
                      fontColor: Colors.white,
                      //maxLength: 25,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(25),
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z\s]+')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBoxWidget(
                      hintTextColor: Colors.grey.shade500,
                      focusedborderSide: const UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white70,
                      )),
                      enabledBorderColor: const UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white70,
                      )),
                      controller: appointCtrl.phoneNumCtrl,
                      cursorColor: Colors.white,
                      //width: 280,
                      fillColor: Colors.transparent,
                      hintText: 'Your Phone',
                      cursorHeight: 25,
                      fontColor: Colors.white,
                      // maxLength: 10,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextBoxWidget(
                      cursorColor: Colors.white,
                      hintTextColor: Colors.grey.shade500,
                      focusedborderSide: const UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white70,
                      )),
                      enabledBorderColor: const UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white70,
                      )),
                      controller: appointCtrl.phoneNumCtrl,
                      width: 280,
                      fillColor: Colors.transparent,
                      hintText: 'Your E-mail',
                      cursorHeight: 25,
                      fontColor: Colors.white,
                      // maxLength: 10,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        /*  FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9]')), */
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DropDownWidget(
                        dropdownTxt: doctorselectedValue ?? "Select test",
                        items: doctorlist.map((String value) {
                          return PopupMenuItem<String>(
                            value: value,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  0.184, // Set width of the menu item
                              child: ListTile(
                                // Use ListTile for consistent styling
                                title: Text(value,
                                    style:
                                        const TextStyle(color: Colors.black)),
                              ),
                            ),
                          );
                        }).toList(),
                        dropdownTextColor: doctorselectedValue != null
                            ? Colors.white
                            : Colors.white,
                        onSelected: (String newValue) {
                          setState(() {
                            doctorselectedValue = newValue;
                          });
                        },
                        selecteddropdownTextColor: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MutltiLineTextField(
                      height: MediaQuery.of(context).size.height * 0.2,
                      hintText: 'Enter Your Message',
                      maxLength: 70,
                      width: MediaQuery.of(context).size.width,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(50),
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-zA-Z\s]+')),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CommonButtonWidget(
                      backgroundColor: buttonColor,
                      borderColor: buttonColor,
                      borderRadius: BorderRadius.circular(5.0),
                      btnText: 'Make an Appointment',
                      foregroundColor: Colors.white,
                      onPressed: () {
                        String errorMessage = appointCtrl.validateAppointment();
                        if (errorMessage.isEmpty) {
                          // Display process indicator
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );
                          /* // Simulate sending email (replace with actual email sending logic)
                                  bool emailSent = await popupCtrl.sendEmail(
                                  selectedTests: popupCtrl.selectedTests,
                                  email: popupCtrl.emailCntrl.text,
                                  name: popupCtrl.username.text,
                                  ); */
                          Navigator.of(context).pop();
                          // if (emailSent) {
                          // Display success alert
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Success'),
                                content: const Text('Booked successfully.'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                          // Clear form fields and checkboxes after successful submission
                          /*  popupCtrl.clearCheckboxes();
                                  popupCtrl.emailCntrl.clear();
                                  popupCtrl.username.clear(); */
                          /* } else {
                                  // Display error message
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Error'),
                                        content: const Text('Failed to send email.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () =>
                                                Navigator.of(context).pop(),
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                } */
                        } else {
                          // Display error message
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Error'),
                                content: Text(errorMessage),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
        SizedBox(
          height: (width > 700 && width < 1000)
              ? MediaQuery.of(context).size.height * 0.5
              : MediaQuery.of(context).size.height * 0.6,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10, 10),
            child: Column(
              crossAxisAlignment: (width > 700 && width < 1000)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  'LEARN ANYTHING',
                  textAlign: (width > 700 && width < 1000)
                      ? TextAlign.center
                      : TextAlign.left,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'We Offer Best Services',
                  textAlign: (width > 700 && width < 1000)
                      ? TextAlign.center
                      : TextAlign.left,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: appointmentList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) =>
                            setState(() => isHoveredList[index] = true),
                        onExit: (_) =>
                            setState(() => isHoveredList[index] = false),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                              decoration: BoxDecoration(
                                gradient: isHoveredList[index]
                                    ? radiantColor
                                    : radiantwhiteColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    FaIcon(
                                      appointmentList[index]['icon'],
                                      color: isHoveredList[index]
                                          ? Colors.white
                                          : textColor,
                                      size: 50,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          appointmentList[index]['skill'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16,
                                            color: isHoveredList[index]
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: Text(
                                              appointmentList[index]['desc'],
                                              style: TextStyle(
                                                color: isHoveredList[index]
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  /*  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);
    if (time != null) {
      setState(() {
        timeController.text = "${time.hour}:${time.minute}";
      });
    }
  } */
}
