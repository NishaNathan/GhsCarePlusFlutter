import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MutltiLineTextField extends StatefulWidget {
  TextEditingController? multitextController;
  int? maxLength;
  String? hintText;
  double? width;
  double? height;
  List<TextInputFormatter>? inputFormatters;
  MutltiLineTextField(
      {this.multitextController,
      this.maxLength,
      this.hintText,
      this.width,
      this.height,
      this.inputFormatters,
      super.key});

  @override
  State<MutltiLineTextField> createState() => _MutltiLineTextFieldState();
}

class _MutltiLineTextFieldState extends State<MutltiLineTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextField(
        controller: widget.multitextController,
        maxLines: 70,
        keyboardType: TextInputType.multiline,
        //maxLength: widget.maxLength,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),

          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Colors.white),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
