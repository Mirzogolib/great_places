import 'package:flutter/material.dart';
import 'package:great_places/constants/routes.dart';
import 'package:great_places/pages/add_place_screen.dart';
import 'package:great_places/pages/places_screen.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesScreen(),
        routes: {
          Constants.addPlaceRoute: (ctx) => AddPlaceScreen(), 
        },
      ),
    );
  }
}
