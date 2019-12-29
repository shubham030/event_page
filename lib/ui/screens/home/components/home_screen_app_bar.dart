import 'package:event_page/ui/bloc/home_screen_bloc.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key key,
    @required HomeScreenBloc homeScreenBloc,
    @required this.cityName,
  })  : _homeScreenBloc = homeScreenBloc,
        super(key: key);

  final HomeScreenBloc _homeScreenBloc;
  final List<String> cityName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 20),
        DropdownButtonHideUnderline(
          child: Theme(
            data: ThemeData(
              canvasColor: Color.fromRGBO(31, 35, 39, 1),
            ),
            child: StreamBuilder<String>(
                stream: _homeScreenBloc.city,
                builder: (context, snapshot) {
                  return DropdownButton(
                    iconSize: 30,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                    value: snapshot.data,
                    items: cityName
                        .map(
                          (x) => DropdownMenuItem(
                            child: Text(
                              x,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            value: x,
                          ),
                        )
                        .toList(),
                    onChanged: _homeScreenBloc.onCityChanged,
                  );
                }),
          ),
        ),
        Spacer(),
        Container(
          height: 40,
          child: FloatingActionButton(
            heroTag: 'search',
            backgroundColor: Color.fromRGBO(31, 35, 39, 1),
            child: Icon(
              Icons.search,
              color: Color.fromRGBO(132, 139, 149, 1),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          height: 40,
          child: FloatingActionButton(
            heroTag: 'tune',
            backgroundColor: Color.fromRGBO(31, 35, 39, 1),
            child: Icon(
              Icons.tune,
              color: Color.fromRGBO(132, 139, 149, 1),
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
