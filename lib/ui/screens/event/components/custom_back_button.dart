import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.5),
      ),
      child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.white,
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}