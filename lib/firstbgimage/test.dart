/* import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ghswebsite/commonwidget/checkboxwidget.dart';
import 'package:ghswebsite/constants/color.dart';
import 'package:ghswebsite/constants/imageres.dart';
import 'package:ghswebsite/controller/popupcontroller.dart';
import 'package:lottie/lottie.dart';

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
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        SizedBox(
          width: width * 0.5,
          height: height * 0.8,
          child: Stack(children: [
            Positioned(
              top: 0,
              left: 0,
              child: Row(
                children: [
                  Image.asset(
                    logoimage, // Replace with your image asset path
                    width: 100, // Adjust width as needed
                    height: 100, // Adjust height as needed
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GLOBAL HEALTH SOLUTIONS',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'Better care for a better life',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Precision Testing',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  const Text(
                    'Superior Results:',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  const Text(
                    '"Experience Our Test Lab Today"',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  /*  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: [
                      ScaleAnimatedText('Think'),
                      ScaleAnimatedText('Build'),
                      ScaleAnimatedText('Ship'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ), */

                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Discover unparalleled precision and superior outcomes at our cutting-edge test lab. Explore today for an experience that exceeds expectations.',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _showCheckBoxDialog(context, dataList);
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 60)),
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: BorderSide(color: buttonColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    child: Text(
                      'Get Quote'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Row(
          children: [
            SizedBox(
              //color: Colors.blue,
              width: width * 0.5,
              height: height * 0.8,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Lottie.asset(
                      'assets/images/animatesparklej.json', // Replace 'your_animation.json' with the actual path to your Lottie animation file
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    top: 2, // Positioned at the top
                    right: 4, // Positioned at the right
                    child: Image.asset(
                      'assets/images/isocert.png', // Replace 'your_image_asset.png' with the path to your image asset
                      width: 180, // Adjust width as needed
                      height: 60, // Adjust height as needed
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    //right: 0, // Positioned at the right
                    child: Image.asset(
                      landPageImg,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        /*  SizedBox(
          //color: Colors.blue,
          width: width * 0.5,
          height: height * 0.8,
          child: Image.asset(
            landPageImg,
            fit: BoxFit.contain,
          ),
        ), */
      ],
    );
  }

  void _showCheckBoxDialog(
      BuildContext context, List<Map<String, dynamic>> dataList) {
    final PopUpController popupCtrl = Get.put(PopUpController());

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Dialog(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: AlertDialog(
                    //backgroundColor: Colors.white,
                    actions: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              popupCtrl.clearCheckboxes();
                              Navigator.of(context).pop();
                            },
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(100, 40)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber),
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.amber),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Close',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          ElevatedButton(
                            onPressed: () async {
                              String errorMessage = popupCtrl.validateInputs();
                              if (errorMessage.isEmpty) {
                                Navigator.of(context).pop();
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
              
                                // Simulate sending email (replace with actual email sending logic)
                                bool emailSent = await popupCtrl.sendEmail(
                                  selectedTests: popupCtrl.selectedTests,
                                  email: popupCtrl.emailCntrl.text,
                                  name: popupCtrl.username.text,
                                );
                                Navigator.of(context).pop();
                                if (emailSent) {
                                  // Display success alert
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Success'),
                                        content: const Text(
                                            'Email sent successfully.'),
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
                                  popupCtrl.clearCheckboxes();
                                  popupCtrl.emailCntrl.clear();
                                  popupCtrl.username.clear();
                                } else {
                                  // Display error message
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Error'),
                                        content:
                                            const Text('Failed to send email.'),
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
              
                            /* onPressed: () {
                            String errorMessage = _validateInputs(popupCtrl);
                            if (errorMessage.isEmpty) {
                              // Proceed with submitting the form
                              popupCtrl.sendEmail(
                                selectedTests: popupCtrl.selectedTests,
                                email: popupCtrl.emailCntrl.text,
                                name: popupCtrl.username.text,
                              );
                
                              popupCtrl.clearCheckboxes();
                              popupCtrl.emailCntrl.clear();
                              popupCtrl.username.clear();
                              Navigator.of(context).pop();
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
                          }, */
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(100, 40)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber),
                              shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.amber),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Test that we undertake',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: textColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          child: const Text(
                            'Introducing best health tests at best rates. Select a test and we will send you the package details to your inbox.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    content: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: ListView.builder(
                                itemCount: dataList.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                      title: Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Text(
                                            dataList[index]['testname'] ?? ''),
                                      ),
                                      trailing: SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Obx(
                                          () => CheckBoxWidget(
                                            onChanged: (bool? value) {
                                              popupCtrl.toggleCheckbox(
                                                  index, dataList);
                                              popupCtrl.textfieldview.value =
                                                  true;
                                            },
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            activeClr: textColor,
                                            chkClr: Colors.white,
                                            tileClr: Colors.black,
                                            value:
                                                popupCtrl.checkboxValues[index],
                                          ),
                                        ),
                                      ));
                                },
                              ),
                            ),
                            Obx(
                              () => Visibility(
                                visible: popupCtrl.textfieldview.value &&
                                    popupCtrl.checkboxValues
                                        .any((value) => value),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Enter your details'.toUpperCase(),
                                      style: TextStyle(
                                          color: textColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      width:
                                          MediaQuery.of(context).size.width * 0.2,
                                      child: TextField(
                                        controller: popupCtrl.username,
                                        decoration: const InputDecoration(
                                          hintText: 'Please Enter your Name',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 50,
                                      //height: MediaQuery.of(context).size.height*0.1,
                                      width:
                                          MediaQuery.of(context).size.width * 0.2,
                                      child: TextField(
                                        controller: popupCtrl.emailCntrl,
                                        decoration: const InputDecoration(
                                          hintText: 'Please Enter your Email-Id',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            );
          },
        );
      },
    );
  }
}
 */


/* Row(
      children: [
        SizedBox(
          width: width * 0.5,
          height: height * 0.8,
          child: Stack(children: [
            Positioned(
              top: 0,
              left: 0,
              child: Row(
                children: [
                  Image.asset(
                    logoimage, // Replace with your image asset path
                    width: 100, // Adjust width as needed
                    height: 100, // Adjust height as needed
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'GLOBAL HEALTH SOLUTIONS',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'Better care for a better life',
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Precision Testing',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  const Text(
                    'Superior Results:',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  const Text(
                    '"Experience Our Test Lab Today"',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  /*  const SizedBox(
                    height: 20.0,
                  ),
                  AnimatedTextKit(
                    isRepeatingAnimation: true,
                    repeatForever: true,
                    animatedTexts: [
                      ScaleAnimatedText('Think'),
                      ScaleAnimatedText('Build'),
                      ScaleAnimatedText('Ship'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ), */

                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    'Discover unparalleled precision and superior outcomes at our cutting-edge test lab. Explore today for an experience that exceeds expectations.',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _showCheckBoxDialog(context, dataList);
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 60)),
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: BorderSide(color: buttonColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    child: Text(
                      'Get Quote'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Row(
          children: [
            SizedBox(
              //color: Colors.blue,
              width: width * 0.5,
              height: height * 0.8,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Lottie.asset(
                      'assets/images/animatesparklej.json', // Replace 'your_animation.json' with the actual path to your Lottie animation file
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    top: 2, // Positioned at the top
                    right: 4, // Positioned at the right
                    child: Image.asset(
                      'assets/images/isocert.png', // Replace 'your_image_asset.png' with the path to your image asset
                      width: 180, // Adjust width as needed
                      height: 60, // Adjust height as needed
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    //right: 0, // Positioned at the right
                    child: Image.asset(
                      landPageImg,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        /*  SizedBox(
          //color: Colors.blue,
          width: width * 0.5,
          height: height * 0.8,
          child: Image.asset(
            landPageImg,
            fit: BoxFit.contain,
          ),
        ), */
      ],
    ); */