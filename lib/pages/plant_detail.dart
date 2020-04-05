import 'package:flutter/material.dart';

class PlantDetail extends StatefulWidget {
  @override
  _PlantDetailState createState() => _PlantDetailState();
}

class _PlantDetailState extends State<PlantDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        title: new Text('Plant detail'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}

