import 'package:flutter/material.dart';
import 'package:ghscareplus/about/aboutus.dart';
import 'package:ghscareplus/appointment/appointment.dart';
import 'package:ghscareplus/contact/contactus.dart';
import 'package:ghscareplus/firstbgimage/landingPage.dart';
import 'package:ghscareplus/packageavailable/pricedetails.dart';
import 'package:ghscareplus/servicegiven/services.dart';
import 'package:ghscareplus/trustedpartners/ourpartners.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //var width = MediaQuery.of(context).size.width;
    return Scaffold(
      /* drawer: const MenuWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: radiantColor,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: width > 600
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavBarItem(
                    title: 'Home'.toUpperCase(),
                    onTap: () => scrollToSection(0),
                    isSelected: _currentIndex == 0,
                    onIndexChanged: () => updateIndex(0),
                  ),
                  const SizedBox(width: 20),
                  NavBarItem(
                    title: 'Appointment'.toUpperCase(),
                    onTap: () => scrollToSection(1),
                    isSelected: _currentIndex == 1,
                    onIndexChanged: () => updateIndex(1),
                  ),
                  const SizedBox(width: 20),
                  NavBarItem(
                    title: 'Services'.toUpperCase(),
                    onTap: () => scrollToSection(2),
                    isSelected: _currentIndex == 2,
                    onIndexChanged: () => updateIndex(2),
                  ),
                  const SizedBox(width: 20),
                  NavBarItem(
                    title: 'About Us'.toUpperCase(),
                    onTap: () => scrollToSection(3),
                    isSelected: _currentIndex == 3,
                    onIndexChanged: () => updateIndex(3),
                  ),
                  const SizedBox(width: 20),
                  /* NavBarItem(
                    title: 'Doctors'.toUpperCase(),
                    onTap: () => scrollToSection(4),
                    isSelected: _currentIndex == 4,
                    onIndexChanged: () => updateIndex(4),
                  ),
                  const SizedBox(width: 20),
                  NavBarItem(
                    title: 'Testimonials'.toUpperCase(),
                    onTap: () => scrollToSection(5),
                    isSelected: _currentIndex == 5,
                    onIndexChanged: () => updateIndex(5),
                  ),
                  const SizedBox(width: 20), */
                  NavBarItem(
                    title: 'Blog'.toUpperCase(),
                    onTap: () => scrollToSection(6),
                    isSelected: _currentIndex == 6,
                    onIndexChanged: () => updateIndex(6),
                  ),
                  const SizedBox(width: 20),
                  NavBarItem(
                    title: 'Pricing'.toUpperCase(),
                    onTap: () => scrollToSection(7),
                    isSelected: _currentIndex == 7,
                    onIndexChanged: () => updateIndex(7),
                  ),
                  const SizedBox(width: 20),
                  NavBarItem(
                    title: 'Contact Us'.toUpperCase(),
                    onTap: () => scrollToSection(8),
                    isSelected: _currentIndex == 8,
                    onIndexChanged: () => updateIndex(8),
                  ),
                ],
              )
            : const SizedBox(),
        leading: width > 600
            ? const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'GHS',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              )
            : null,
        actions: [
          ElevatedButton(
            onPressed: () {
              _showCheckBoxDialog(context, dataList);
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(100, 40)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  //borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            child: const Text(
              'Get Quote',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ), */
      body: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        child: const Column(children: [
          //BgImage(),
          LandingPage(),
          AppointmentWidget(),
          ServiceAvailable(),
          AboutUs(),
          OurPartners(),
          //OurPartners
          //OurDoctors(),
          //TestimonialWidget(),
         // BlogPost(),
          PriceDetails(),
          ContactUs()
        ]),
      ),
    );
  }

  void scrollToSection(int sectionIndex) {
    double offset = 0;
    for (int i = 0; i < sectionIndex; i++) {
      offset += MediaQuery.of(context).size.height;
    }

    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void updateIndex(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }
}

/* void _showCheckBoxDialog(
  BuildContext context, List<Map<String, dynamic>> dataList) {
  final PopUpController popupCtrl = Get.put(PopUpController());

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
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
                                  content:
                                      const Text('Email sent successfully.'),
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
                                  child:
                                      Text(dataList[index]['testname'] ?? ''),
                                ),
                                trailing: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: Obx(
                                    () => CheckBoxWidget(
                                      onChanged: (bool? value) {
                                        popupCtrl.toggleCheckbox(
                                            index, dataList);
                                        popupCtrl.textfieldview.value = true;
                                      },
                                      borderRadius: BorderRadius.circular(5.0),
                                      activeClr: textColor,
                                      chkClr: Colors.white,
                                      tileClr: Colors.black,
                                      value: popupCtrl.checkboxValues[index],
                                    ),
                                  ),
                                ));
                          },
                        ),
                      ),
                      Obx(
                        () => Visibility(
                          visible: popupCtrl.textfieldview.value &&
                              popupCtrl.checkboxValues.any((value) => value),
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
                                width: MediaQuery.of(context).size.width * 0.2,
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
                                width: MediaQuery.of(context).size.width * 0.2,
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
              ));
        },
      );
    },
  );
} */


class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool isSelected;
  final VoidCallback? onIndexChanged;

  const NavBarItem({
    super.key,
    required this.title,
    this.onTap,
    required this.isSelected,
    this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
          onIndexChanged?.call();
        },
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.amber : Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
