import 'dart:async';
import 'package:flutter/material.dart';

class FooderlichTab {
  static const int popular = 0;
  static const int profile = 1;
  static const int search = 2;
}

class FooderlichCategory {
  static const movie = 0;
  static const series = 1;
}

// AppStateManager mocks the various app state such as app initialization,
// app login, and onboarding.
class AppStateManager extends ChangeNotifier {
  // Records the current tab the user is on.
  int _selectedTab = FooderlichTab.popular;
  int _selectedCategory = FooderlichCategory.movie;
  // Stores user state properties on platform specific file system.
  //final _appCache = AppCache();

  int get getSelectedTab => _selectedTab;
  int get getSelectedCategry => _selectedCategory;

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void changeCategory(index) {
    _selectedCategory = index;
    notifyListeners();
  }
}
