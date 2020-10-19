import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  var colorsArray = [
    [Color(0xFFF8E4B1), Color(0xFFEECE7C), Colors.yellow],
    [Colors.orange, Colors.green, Colors.purple],
    [Colors.lime, Colors.amber, Colors.pink]
  ];
  var _fabricColor = 0;
  var _fixativeColor = 0;
  var _myColor = Color(0xFFE5B436);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    GestureDetector _buildButtonColumn(
        Color color, IconData icon, String label, dynamic onTap) {
      return GestureDetector(
        // onTap: onTap,
        // onTapDown
        onTapDown: (TapDownDetails details) {
          setState(() {
            //  _myColor = Colors.orange;
            onTap();
            _myColor = colorsArray[_fabricColor][_fixativeColor];
          });
        },
        onTapUp: (TapUpDetails details) {
          setState(() {
            print(_fabricColor);
            print(_fixativeColor);
            print(colorsArray[_fabricColor][_fixativeColor]);
            _myColor = colorsArray[_fabricColor][_fixativeColor];
          });
        },
        //single icon
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Color(0xFF483C30),
              size: 55.0,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF483C30)),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSection = Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe60e, fontFamily: 'Pigment'), 'Cotton', () {
              //print('call1');
              _fabricColor = 0;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Wool', () {
              //print('call2');
              _fabricColor = 1;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Silk', () {
              //print('call3');
              _fabricColor = 2;
            }),
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
                color, IconData(0xe60e, fontFamily: 'Pigment'), 'Copper', () {
              //print('calla');
              _fixativeColor = 0;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Alum', () {
              //print('callb');
              _fixativeColor = 1;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Iron', () {
              //print('callc');
              _fixativeColor = 2;
            }),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFF3ECE3),
      appBar: new AppBar(
        backgroundColor: Color(0xFFF3ECE3),
        title: new Text(
          'Emulator',
          style: TextStyle(
            color: Color(0xFF483C30),
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xFF483C30)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.not_listed_location),
            onPressed: () {
              print('saved');
            },
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            //Emulator
            Container(
              width: 368.0,
              height: 248.0,
              decoration: BoxDecoration(
                  color: _myColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  'By choosing different options\nchecking your final dyeing color',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF483C30),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Fabric',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF483C30)),
            ),
            SizedBox(height: 20),
            buttonSection,
            SizedBox(height: 30),
            Text(
              'Fixative',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF483C30)),
            ),
            SizedBox(height: 20),
            buttonSection2,
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        height: 50,
                        child: FlatButton(
                            onPressed: () =>
                                {Navigator.pushNamed(context, '/plantdetail')},
                            child: Text(
                              'Confirm',
                              style: TextStyle(color: Colors.white),
                            )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            colors: [Color(0xFF96A97C), Color(0xFF96A97C)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
