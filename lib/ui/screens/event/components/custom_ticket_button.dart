import 'package:flutter/material.dart';

class CustomTicketButton extends StatelessWidget {
  const CustomTicketButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: RaisedButton(
        color: Color.fromRGBO(92, 89, 211, 1),
        child: Text(
          'Get Ticket',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}