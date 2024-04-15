import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        //padding: EdgeInsets.zero,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: radiantColor,
            ),
            child: const Row(
              children: [
                Text(
                  'GHS CARE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                )
              ],
            ),
          ),
          NavBarItem(
            icon: FontAwesomeIcons.house,
            title: 'Home'.toUpperCase(),
            onTap: () {
              Navigator.pop(context);
              scrollToSection(0);
            },
            /*  => , */
            isSelected: _currentIndex == 0,
            onIndexChanged: () => updateIndex(0),
          ),
          NavBarItem(
            icon: FontAwesomeIcons.circleInfo,
            title: 'About'.toUpperCase(),
            onTap: () => scrollToSection(1),
            isSelected: _currentIndex == 1,
            onIndexChanged: () => updateIndex(1),
          ),
          NavBarItem(
            icon: FontAwesomeIcons.gear,
            title: 'Service'.toUpperCase(),
            onTap: () => scrollToSection(2),
            isSelected: _currentIndex == 2,
            onIndexChanged: () => updateIndex(2),
          ),
          NavBarItem(
            icon: FontAwesomeIcons.handHoldingDollar,
            title: 'Pricing'.toUpperCase(),
            onTap: () => scrollToSection(3),
            isSelected: _currentIndex == 3,
            onIndexChanged: () => updateIndex(3),
          ),
          NavBarItem(
            icon: FontAwesomeIcons.phone,
            title: 'Contact'.toUpperCase(),
            onTap: () => scrollToSection(4),
            isSelected: _currentIndex == 4,
            onIndexChanged: () => updateIndex(4),
          ),
        ],
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

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool isSelected;
  final VoidCallback? onIndexChanged;
  final IconData icon;

  const NavBarItem({
    super.key,
    required this.title,
    this.onTap,
    required this.isSelected,
    this.onIndexChanged,
    required this.icon,
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              FaIcon(
                icon,
                color: Colors.black,
                size: 14,
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
