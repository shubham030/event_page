import 'package:event_page/ui/bloc/home_screen_bloc.dart';
import 'package:event_page/utils/mock_data.dart';
import 'package:flutter/material.dart';

import 'components/category_selector_card.dart';
import 'components/home_screen_app_bar.dart';
import 'components/popular_event_scroll_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> cityName = ['Paris', 'Washington', 'London'];

  final HomeScreenBloc _homeScreenBloc = HomeScreenBloc();

  @override
  void initState() {
    //Adding inital city
    _homeScreenBloc.onCityChanged(cityName[0]);
    //Adding inital category to food as in the design //can me modified accordingly
    _homeScreenBloc.selectCategory.add(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 28, 32, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(flex: 2),
            HomeScreenAppBar(
              homeScreenBloc: _homeScreenBloc,
              cityName: cityName,
            ),
            Spacer(),
            StreamBuilder<int>(
              stream: _homeScreenBloc.selectedCategoryIndex,
              builder: (context, snapshot) {
                return Container(
                  height: 140,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => _homeScreenBloc.selectCategory.add(index),
                        splashColor: Colors.transparent,
                        child: CategorySelectorcard(
                          isSelected: snapshot.data == index ? true : false,
                          icon: categoryData[index]['icon'],
                          title: categoryData[index]['title'],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Spacer(),
            PopularEventsScrollList(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
