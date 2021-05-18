import 'package:flutter/material.dart';

import 'food.dart';

/// The [Favorites] class holds a list of favorite items saved by the user.
class Favorites extends ChangeNotifier {
  List<Dislist> _favoriteItems = [];

  List<Dislist> get items => _favoriteItems;

  void add(Dislist dish) {
    _favoriteItems.add(dish);
    notifyListeners();
  }

  void remove(Dislist dish) {
    _favoriteItems.removeWhere((item) => item.did == dish.did);
    notifyListeners();
  }
}
