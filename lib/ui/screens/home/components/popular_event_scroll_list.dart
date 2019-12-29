import 'package:event_page/ui/widgets/home_screen_event_card.dart';
import 'package:flutter/material.dart';

class PopularEventsScrollList extends StatelessWidget {
  const PopularEventsScrollList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 30,
            bottom: 16,
          ),
          child: Text(
            'Popular Events',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return HomeScreenEventCard(
                
              );
            },
          ),
        ),
      ],
    );
  }
}
