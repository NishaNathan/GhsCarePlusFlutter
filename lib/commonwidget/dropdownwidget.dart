import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  final List<PopupMenuEntry<String>> items;
  final String? value;
  final Function(String) onSelected;
  final String dropdownTxt;
  final Color? dropdownTextColor;
  final Color? selecteddropdownTextColor;

  const DropDownWidget({
    Key? key,
    required this.items,
    this.value,
    required this.onSelected,
    required this.dropdownTxt,
    this.dropdownTextColor,
    this.selecteddropdownTextColor,
  }) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      offset: const Offset(0, 40),
      itemBuilder: (BuildContext context) {
        return widget.items;
      },
      onSelected: widget.onSelected,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.white)), // Add bottom border
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 12, vertical: 8), // Add padding to container
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.dropdownTxt,
              style: TextStyle(
                  color: widget.value != null
                      ? widget.selecteddropdownTextColor
                      : widget.dropdownTextColor),
            ),
            const Icon(Icons.arrow_drop_down_rounded,
                color: Colors.white), // Set dropdown icon
          ],
        ),
      ),
    );
  }
}
