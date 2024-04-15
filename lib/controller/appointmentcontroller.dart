import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppointmentController extends GetxController {
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController phoneNumCtrl = TextEditingController();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController testCtrl = TextEditingController();
  final TextEditingController messageCtrl = TextEditingController();

  String validateAppointment() {
    final RegExp nameRegExp = RegExp(r'^[A-Za-z ]+$');
    final RegExp phoneRegExp = RegExp(r'^[0-9]{10}$');
     final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    // Validation for each field

    if (nameCtrl.text.isEmpty &&
        phoneNumCtrl.text.isEmpty &&
        emailCtrl.text.isEmpty &&
        testCtrl.text.isEmpty &&
        messageCtrl.text.isEmpty) {
      return 'Please fill the details';
    }
    if (nameCtrl.text.isEmpty || !nameRegExp.hasMatch(nameCtrl.text)) {
      return 'Please enter a valid name';
    }
    if (phoneNumCtrl.text.isEmpty || !phoneRegExp.hasMatch(phoneNumCtrl.text)) {
      return 'Please enter a valid 10-digit phone number';
    }
    if (emailCtrl.text.isEmpty || !emailRegExp.hasMatch(emailCtrl.text)) {
      return 'Please enter vaild e-mail';
    }

    if (testCtrl.text.isEmpty) {
      return 'Please select a date';
    }
   
    return "";
  }
}
