import 'package:flutter/material.dart';

class DropDownSearchWidget extends StatefulWidget {
  final List<String> items;
  final List<String> selectedItems;
  final Function(List<String>) onSelected;
  final String dropdownTxt;
  final Color? dropdownTextColor;
  final Color? selecteddropdownTextColor;

  const DropDownSearchWidget({
    Key? key,
    required this.items,
    required this.selectedItems,
    required this.onSelected,
    required this.dropdownTxt,
    this.dropdownTextColor,
    this.selecteddropdownTextColor,
  }) : super(key: key);

  @override
  State<DropDownSearchWidget> createState() => _DropDownSearchWidgetState();
}

class _DropDownSearchWidgetState extends State<DropDownSearchWidget> {
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      offset: const Offset(0, 40),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Column(
              children: [
                TextField(
                  onChanged: _filterItems,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CheckboxListTile(
                        title: Text(filteredItems[index]),
                        value: widget.selectedItems.contains(filteredItems[index]),
                        onChanged: (bool? value) {
                          setState(() {
                            if (value != null && value) {
                              widget.selectedItems.add(filteredItems[index]);
                            } else {
                              widget.selectedItems.remove(filteredItems[index]);
                            }
                            widget.onSelected(widget.selectedItems);
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ];
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey), // Add bottom border
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ), // Add padding to container
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.dropdownTxt,
              style: TextStyle(
                color: widget.selectedItems.isNotEmpty
                    ? widget.selecteddropdownTextColor
                    : widget.dropdownTextColor,
              ),
            ),
            const Icon(Icons.arrow_drop_down_rounded, color: Colors.grey), // Set dropdown icon
          ],
        ),
      ),
    );
  }

  void _filterItems(String searchText) {
    setState(() {
      filteredItems = widget.items
          .where((item) => item.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    });
  }
}
