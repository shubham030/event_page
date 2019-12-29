import 'package:flutter/material.dart';

class CategorySelectorcard extends StatelessWidget {
  final bool isSelected;
  final String icon;
  final String title;
  CategorySelectorcard({Key key, this.isSelected, this.icon, this.title})
      : super(key: key);

  final Color selectedColor = Color.fromRGBO(74, 72, 184, 1);
  final Color unSelectedColor = Colors.black26;
  final List<Color> selectedGradientColor = [
    Color.fromRGBO(74, 72, 158, 1),
    Color.fromRGBO(92, 89, 211, 1),
  ];
  final List<Color> unSelectedGradientColor = [
    Color.fromRGBO(35, 40, 45, 1),
    Color.fromRGBO(56, 62, 67, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        color: Color.fromRGBO(56, 62, 67, 1),
        child: Container(
          padding: EdgeInsets.all(0),
          height: 140,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors:
                  isSelected ? selectedGradientColor : unSelectedGradientColor,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 5),
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  color: isSelected ? selectedColor : unSelectedColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    icon,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
