import 'package:flutter/material.dart';

class EventInfo extends StatelessWidget {
  const EventInfo({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        color: Color.fromRGBO(44, 45, 51, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
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
              Container(
                padding: EdgeInsets.only(left: 30),
                width: size.width * 0.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'FRI, DEC 19TH - MON, DEC 27TH',
                      style: TextStyle(
                        color: Color.fromRGBO(92, 89, 211, 1),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Nocturnal and \nunusual \nvisit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Spacer(),
                    SizedBox(height: 20),
                    Text(
                      'Musee du Louvre, Paris',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    // Spacer(),
                  ],
                ),
              ),
              Container(
                width: size.width * 0.3,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(76, 80, 87, 1),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
