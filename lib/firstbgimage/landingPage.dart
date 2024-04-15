import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ghscareplus/commonwidget/texformfieldwidget.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/controller/popupcontroller.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:pretty_animated_buttons/widgets/pretty_capsule_button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Map<String, dynamic>> dataList = [
    {'testname': 'Blood Group & type test'},
    {'testname': 'Blood Cultire Test'},
  ];

  /*  List<MultiSelectItem<Object?>> doctorlist = [
    'Blood Group & type test',
    'Blood Cultire Test',
    'Doctor 3',
    'Doctor 4',
    'Doctor 5',
  ]; */

  String? doctorselectedValue;

  List<String> selectedItems = [];

  List<String> items = [
    "Brazil",
    "Italia (Disabled)",
    "Tunisia",
    'Canada',
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        // GIF
        SizedBox(
          // color: Colors.red,
          width: width,
          height: height * 1,
          child: Image.asset(
            'assets/images/GHS-GIF.gif',
            fit: BoxFit.cover,
            width: width,
          ),
        ),
        // Button
        Positioned(
          // textDirection: TextDirection.ltr,
          top: 180,
          left: 100,
          child: PrettyCapsuleButton(
            label: 'Get Quote'.toUpperCase(),
            labelStyle: const TextStyle(fontWeight: FontWeight.w900),
            bgColor: buttonColor,
            onPressed: () {
              _showCheckBoxDialog(context, dataList);
            },
          ),
        ),
      ],
    );

    
  }

  void _showCheckBoxDialog(
      BuildContext context, List<Map<String, dynamic>> dataList) {
    final PopUpController popupCtrl = Get.put(PopUpController());
    bool isHoverSubmit = false;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              child: IntrinsicHeight(
                child: IntrinsicWidth(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    //padding: const EdgeInsets.all(16.0),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 10.0, bottom: 10.0),
                                child: Image.asset(popupimage)),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    //  color: Colors.amber,
                                    width: MediaQuery.of(context).size.width *
                                        0.235,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              20.0, 70.0, 20.0, 20.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                'Test that we undertake',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 20.0,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                child: const Text(
                                                  textAlign: TextAlign.center,
                                                  'Introducing best health tests at best rates. Select a test and we will send you the package details to your inbox.',
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              IntrinsicHeight(
                                                // height:
                                                //     MediaQuery.of(context).size.height *
                                                //         0.1,
                                                // width: MediaQuery.of(context).size.width *
                                                //     0.2,
                                                child: Expanded(
                                                  child: MultiSelectDialogField(
                                                    listType:
                                                        MultiSelectListType
                                                            .LIST,
                                                    checkColor: Colors.white,
                                                    dialogHeight: 300,
                                                    dialogWidth: 300,
                                                    backgroundColor:
                                                        Colors.white,
                                                    selectedColor: tealColor,
                                                    searchIcon: Icon(
                                                      Icons.search,
                                                      color: tealColor,
                                                    ),
                                                    chipDisplay:
                                                        MultiSelectChipDisplay(
                                                     
                                                      chipColor: textColor,
                                                      textStyle:
                                                          const TextStyle(
                                                              color:
                                                                  Colors.white),
                                                    ),
                                                    searchable: true,
                                                    items: popupCtrl.labtestdata
                                                        .map((test) =>
                                                            MultiSelectItem(
                                                                test, test))
                                                        .toList(),
                                                    cancelText: Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                          color: textColor),
                                                    ),
                                                    confirmText: Text(
                                                      "OK",
                                                      style: TextStyle(
                                                          color: textColor),
                                                    ),
                                                    title: Text(
                                                      "Search test",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: textColor),
                                                    ),
                                                    //selectedColor: Colors.blue,
                                                    decoration: BoxDecoration(
                                                      //color: Colors.blue.withOpacity(0.1),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  0)),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        //width: 2,
                                                      ),
                                                    ),
                                                    buttonIcon: Icon(
                                                      Icons
                                                          .arrow_drop_down_circle_sharp,
                                                      color: textColor,
                                                    ),
                                                    buttonText: const Text(
                                                      "Select test",
                                                      style: TextStyle(
                                                        //color: Colors.blue[800],
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    isDismissible: true,
                                                    onConfirm: (results) {
                                                      //Gets the selected test from dropdown and stores in selectedtest
                                                      popupCtrl.selectedtest = results;
                                                      print(popupCtrl.selectedtest);
                                                    },
                                                  ),
                                                ),
                                              ),

                                              TextBoxWidget(
                                                fontSize: 14,
                                                hintTextColor:
                                                    Colors.grey.shade500,
                                                focusedborderSide:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                  color: Colors.black,
                                                )),
                                                enabledBorderColor:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                  color: Colors.grey,
                                                )),
                                                controller: popupCtrl.username,
                                                cursorColor: Colors.grey,
                                                
                                                fillColor: Colors.transparent,
                                                hintText: 'Your Name',
                                                cursorHeight: 20,
                                                fontColor: Colors.black,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      25),
                                                  FilteringTextInputFormatter
                                                      .allow(RegExp(
                                                          r'[a-zA-Z\s]+')),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextBoxWidget(
                                                fontSize: 14,
                                                hintTextColor:
                                                    Colors.grey.shade500,
                                                focusedborderSide:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                  color: Colors.black,
                                                )),
                                                enabledBorderColor:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                  color: Colors.grey,
                                                )),
                                                controller:
                                                    popupCtrl.emailCntrl,
                                                cursorColor: Colors.grey,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                fillColor: Colors.transparent,
                                                hintText: 'Your Email',
                                                cursorHeight: 20,
                                                fontColor: Colors.black,
                                                inputFormatters: [],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextBoxWidget(
                                                fontSize: 14,
                                                hintTextColor:
                                                    Colors.grey.shade500,
                                                focusedborderSide:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                  color: Colors.black,
                                                )),
                                                enabledBorderColor:
                                                    const UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                  color: Colors.grey,
                                                )),
                                                controller: popupCtrl.mobnoCtrl,
                                                cursorColor: Colors.grey,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.2,
                                                fillColor: Colors.transparent,
                                                hintText: 'Your Phone',
                                                cursorHeight: 20,
                                                fontColor: Colors.black,
                                                inputFormatters: [
                                                  LengthLimitingTextInputFormatter(
                                                      10),
                                                  FilteringTextInputFormatter
                                                      .allow(RegExp(r'[0-9]')),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              MouseRegion(
                                                onEnter: (_) {
                                                  setState(() {
                                                    isHoverSubmit = true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    isHoverSubmit = false;
                                                  });
                                                },
                                                child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          isHoverSubmit
                                                              ? textColor
                                                              : Colors.white,
                                                      foregroundColor:
                                                          isHoverSubmit
                                                              ? Colors.white
                                                              : textColor,
                                                      side: BorderSide(
                                                          color: textColor),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0))),
                                                  onPressed: () async {
                                                    String errorMessage =
                                                        popupCtrl
                                                            .validateInputs();
                                                    if (errorMessage.isEmpty) {
                                                      Navigator.of(context)
                                                          .pop();
                                                      showDialog(
                                                        context: context,
                                                        barrierDismissible:
                                                            false,
                                                        builder: (BuildContext
                                                            context) {
                                                          return const Center(
                                                            child:
                                                                CircularProgressIndicator(),
                                                          );
                                                        },
                                                      );
                                                      bool emailSent =
                                                          await popupCtrl
                                                              .sendEmail(
                                                        selectedTests: popupCtrl
                                                            .selectedtest,
                                                        email: popupCtrl
                                                            .emailCntrl.text,
                                                        name: popupCtrl
                                                            .username.text,
                                                      );
                                                      Navigator.of(context)
                                                          .pop();
                                                      if (emailSent) {
                                                        // Display success alert
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Success'),
                                                              content: const Text(
                                                                  'Email sent successfully.'),
                                                              actions: <Widget>[
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop(),
                                                                  child:
                                                                      const Text(
                                                                          'OK'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                        popupCtrl.emailCntrl
                                                            .clear();
                                                        popupCtrl.username
                                                            .clear();
                                                        popupCtrl.mobnoCtrl
                                                            .clear();
                                                      } else {
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Error'),
                                                              content: const Text(
                                                                  'Failed to send email.'),
                                                              actions: <Widget>[
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop(),
                                                                  child:
                                                                      const Text(
                                                                          'OK'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    } else {
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Error'),
                                                            content: Text(
                                                                errorMessage),
                                                            actions: <Widget>[
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop(),
                                                                child:
                                                                    const Text(
                                                                        'OK'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  child: const Text('Submit'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: CircleAvatar(
                                radius: 20,
                                child: CircleAvatar(
                                  backgroundColor: textColor,
                                  radius: 40,
                                  child: const Icon(
                                    Icons.close,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
