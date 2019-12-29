import 'package:event_page/ui/screens/event/components/single_event_screen.dart';
import 'package:event_page/ui/screens/page_router.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageRouter(),
    );
  }
}
