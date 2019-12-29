import 'package:event_page/ui/widgets/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int> onChanged;

  const CustomBottomNavigationBar({
    Key key,
    this.initialIndex = 1,
    @required this.onChanged,
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  final List<Map<String, dynamic>> menuData = [
    {
      "title": "Accounts",
      "icon": Icons.credit_card,
    },
    {
      "title": "Events",
      "icon": Icons.calendar_today,
    },
    {
      "title": "Dashboard",
      "icon": Icons.dashboard,
    },
  ];

  int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(26, 28, 32, 0.97),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
          3,
          (index) => InkWell(
            onTap: () {
              if (currentIndex != index) {
                currentIndex = index;
                widget.onChanged(index);
                setState(() {});
              }
            },
            splashColor: Colors.transparent,
            child: CustomBottomMenuItem(
              title: menuData[index]['title'],
              icon: menuData[index]['icon'],
              isSelected: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
