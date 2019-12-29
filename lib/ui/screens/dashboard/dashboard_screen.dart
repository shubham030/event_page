import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(26, 28, 32, 1),
      child: Center(
        child: Text(
          'Dashboard Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
