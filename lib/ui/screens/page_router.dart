import 'package:event_page/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'accounts/account_screen.dart';
import 'dashboard/dashboard_screen.dart';
import 'home/home_screen.dart';

class PageRouter extends StatefulWidget {
  @override
  _PageRouterState createState() => _PageRouterState();
}

class _PageRouterState extends State<PageRouter> {
  int currentIndex;
  @override
  void initState() {
    //setting initial index to 1
    currentIndex = 1;
    super.initState();
  }

  List<Widget> pages = [AccountScreen(), HomeScreen(), DashBoardScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onChanged: (index) {
          print(index);
          currentIndex = index;
          setState(() {});
        },
      ),
      body: pages[currentIndex],
    );
  }
}
