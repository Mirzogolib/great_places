import 'dart:io';

import 'package:flutter/material.dart';
import 'package:great_places/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];
  List<Place> get items {
    return [..._items];
  }

  void addPlace(
    String givenTite,
    File givenImage,
  ) {
    final place = Place(
      id: DateTime.now().toString(),
      title: givenTite,
      location: null,
      image: givenImage,
    );
    _items.add(place);
    notifyListeners();
  }
}
class sada extends StatefulWidget {
  @override
  _sadaState createState() => _sadaState();
}

class _sadaState extends State<sada> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
