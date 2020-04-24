import 'package:flutter/material.dart';

class MaterialList extends StatefulWidget {
  @override
  _MaterialListState createState() => _MaterialListState();
}

class _MaterialListState extends State<MaterialList> {
  Map<String, bool> values = {
    'foo': true,
    'bar': false,
  };

  void main() {
    runApp(new MaterialApp(
        home: new MaterialList(), debugShowCheckedModeBanner: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Material List'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new ListView(
              children: values.keys.map((String key) {
                return new CheckboxListTile(
                  title: new Text(key),
                  value: values[key],
                  onChanged: (bool value) {
                    setState(() {
                      values[key] = value;
                    });
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
