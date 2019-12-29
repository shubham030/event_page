import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.35,
      width: size.width,
      child: Image.asset(
        'assets/event1.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}

