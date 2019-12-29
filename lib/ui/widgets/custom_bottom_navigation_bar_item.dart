import 'package:flutter/material.dart';

class CustomBottomMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  const CustomBottomMenuItem({
    Key key,
    this.icon,
    this.title,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelected ? Colors.white : Colors.transparent,
          ),
          child: Icon(
            icon,
            size: 20,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
        Spacer(),
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
