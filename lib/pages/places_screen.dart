import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Places'),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
