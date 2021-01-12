import 'package:flutter/material.dart';
import 'package:great_places/constants/routes.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:provider/provider.dart';

class PlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Places'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(Constants.addPlaceRoute);
            },
          )
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(
          child: Text(
            'No places added yet, hit + button on the top',
          ),
        ),
        builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
            ? ch
            : ListView.builder(
                itemCount: greatPlaces.items.length,
                itemBuilder: (ctx, i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(
                      greatPlaces.items[i].image,
                    ),
                  ),
                  title: Text(greatPlaces.items[i].title),
                  onTap: () {},
                ),
              ),
      ),
    );
  }
}
