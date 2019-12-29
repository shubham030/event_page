import 'package:event_page/ui/screens/event/single_event_screen.dart';
import 'package:flutter/material.dart';

class HomeScreenEventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SingleEventScreen(),
            ),
          );
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.5,
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Color.fromRGBO(26, 28, 32, 1),
                // border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: size.width * 0.7,
                    height: size.width * 0.7,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/event1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: (size.height * 0.5) - (size.width * 0.7),
                    child: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Spacer(),
                          Text(
                            'FRI,DEC 19TH - MON, DEC 27TH',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(92, 89, 211, 1),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: size.width * 0.6,
                            child: Text(
                              'Nocturnal and unusual visit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Lorvue',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: size.width * 0.7 - 25,
              right: 20,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[500],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.blueGrey[200],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
