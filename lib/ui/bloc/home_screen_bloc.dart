import 'dart:async';

import 'package:rxdart/subjects.dart';

class HomeScreenBloc {
  final _city = BehaviorSubject<String>();
  final _selectedCategoryIndex = BehaviorSubject<int>();

  Function(String) get onCityChanged => _city.sink.add;
  StreamSink<int> get selectCategory => _selectedCategoryIndex.sink;

  Stream<String> get city => _city.stream;
  Stream<int> get selectedCategoryIndex => _selectedCategoryIndex.stream;

  void dispose() {
    _city.close();
    _selectedCategoryIndex.close();
  }
}
