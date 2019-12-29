import 'package:flutter/material.dart';

import 'components/background_image.dart';
import 'components/custom_back_button.dart';
import 'components/custom_ticket_button.dart';
import 'components/event_info.dart';
import 'components/map.dart';
import 'components/organizer_info.dart';

class SingleEventScreen extends StatefulWidget {
  @override
  _SingleEventScreenState createState() => _SingleEventScreenState();
}

class _SingleEventScreenState extends State<SingleEventScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: <Widget>[
            BackgroundImage(size: size),
            Positioned(
              top: 50,
              left: 30,
              child: CustomBackButton(),
            ),
            Positioned(
              top: size.height * 0.3 + 10,
              left: 0,
              right: 0,
              child: OrganizerData(size: size),
            ),
            Positioned(
              top: size.height * 0.3 + 120,
              left: 0,
              right: 0,
              child: EventInfo(size: size),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: MapData(size: size),
            ),
            Positioned(
              bottom: 30,
              left: 30,
              right: 30,
              child: CustomTicketButton(),
            ),
          ],
        ),
      ),
    );
  }
}



