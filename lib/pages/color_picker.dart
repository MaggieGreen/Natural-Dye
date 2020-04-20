import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 55.0,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe60e, fontFamily: 'Pigment'), 'Cotton'),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Wool'),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Silk'),
          ),
        ],
      ),
    );

    Widget buttonSection2 = Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe60e, fontFamily: 'Pigment'), 'Alum'),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Copper'),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Iron'),
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Color Picker'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/plantimage00.jpg'),
            minRadius: 90,
            maxRadius: 100,
          ),
          SizedBox(height: 50),
          Text(
            'Choose Fabric',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          SizedBox(height: 10),
          buttonSection,
          SizedBox(height: 30),
          Text(
            'Choose Fixative',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          SizedBox(height: 10),
          buttonSection2,
          SizedBox(height: 30),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                      height: 50,
                      child: FlatButton(
                          onPressed: null,
                          child: Text(
                            'Confirm',
                            style: TextStyle(color: Colors.white),
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink,
                            Colors.pinkAccent,
                            Colors.purpleAccent
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}
