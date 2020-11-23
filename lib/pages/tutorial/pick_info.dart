import 'package:flutter/material.dart';

final List<PickInfo> pickInfo = [
  PickInfo(
      id: 'Avocado',
      name: 'Avocado Name',
      description:
          'Dyeing Fabric with Avocado Skins and Pits create a beautiful natural dye that comes out pink.',
      color: Colors.pink),
  PickInfo(
    id: 'Marigold',
    name: 'Marigold Name',
    description:
        'As a favorite for producing rich vibrant yellows, green-yellows, and oranges',
    color: Colors.yellow,
  ),
];

// final List<SelectableColor> seletableColor =
//     PickInfo.map((PickInfo description) {
//   return SelectableColor(
//     id: description.id,
//     color: description.color,
//   );
// }).toList();

PickInfo findPickInfoById(String id) {
  return pickInfo.firstWhere((PickInfo description) => description.id == id);
}

class PickInfo {
  PickInfo({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.color,
  });

  String id;
  String name;
  String description;
  String color;

  // PickInfo({this.id, this.name, this.description, this.color});
}

class SelectableColor {
  SelectableColor({
    @required this.id,
    @required this.color,
  });

  final dynamic id;
  final Color color;
}
