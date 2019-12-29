import 'package:flutter/material.dart';

class OrganizerData extends StatelessWidget {
  const OrganizerData({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(34, 35, 38, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 16),
          Container(
            width: 80,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: <Widget>[
              SizedBox(width: 30),
              Container(
                height: 45,
                width: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/user.jpg'),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Izabel Peattie\n',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Organizer',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Spacer(),
              RaisedButton(
                color: Color.fromRGBO(60, 63, 66, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Follow',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 30),
            ],
          ),
        ],
      ),
    );
  }
}



