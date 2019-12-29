import 'package:flutter/material.dart';

class MapData extends StatelessWidget {
  const MapData({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: size.height * 0.22,
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Image.asset(
        'assets/map.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
