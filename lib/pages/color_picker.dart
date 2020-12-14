import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColorPicker extends StatefulWidget {
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  var colorsArray = [
    [Color(0xFFF8E4B1), Color(0xFFEECE7C), Colors.yellow],
    [Colors.orange, Color(0XFFFDC973), Colors.purple],
    [Colors.lime, Colors.amber, Colors.pink]
  ];
  var _fabricColor = 1;
  var _fixativeColor = 0;
  var _myColor = Color(0xFFE5B436);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    GestureDetector _buildButtonColumn(
        Color color, String icon, String label, dynamic onTap) {
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
            SvgPicture.asset(icon, width: 55.0),
            // Icon(
            //   icon,
            //   color: Color(0xFF483C30),
            //   size: 55.0,
            // ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.6,
                    fontFamily: 'OpenSans',
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
                color,
                // 'assets/pngs/cotton.svg',
                '''assets/pngs/cotton${_fabricColor == 0 ? '_active' : ''}.svg''',
                'Cotton', () {
              //print('call2');
              _fabricColor = 0;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color,
                'assets/pngs/cotton${_fabricColor == 1 ? '_active' : ''}.svg',
                'Wool', () {
              //print('call2');
              _fabricColor = 1;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color,
                'assets/pngs/cotton${_fabricColor == 2 ? '_active' : ''}.svg',
                'Silk', () {
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
                color,
                'assets/pngs/cotton${_fixativeColor == 0 ? '_active' : ''}.svg',
                'Copper', () {
              //print('calla');
              _fixativeColor = 0;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color,
                'assets/pngs/cotton${_fixativeColor == 1 ? '_active' : ''}.svg',
                'Alum', () {
              //print('callb');
              _fixativeColor = 1;
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color,
                'assets/pngs/cotton${_fixativeColor == 2 ? '_active' : ''}.svg',
                'Iron', () {
              //print('callc');
              _fixativeColor = 2;
            }),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFFDF9F3),
      appBar: new AppBar(
        backgroundColor: Color(0xFFFDF9F3),
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
              height: 290.0,
              decoration: BoxDecoration(
                  color: _myColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Center(
                child: Text(
                  'Here is your fabric’s final dyeing color\nwith added fixative.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.6,
                    fontFamily: 'OpenSans',
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
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.6,
                  fontFamily: 'OpenSans',
                  color: Color(0xFF483C30)),
            ),
            SizedBox(height: 20),
            buttonSection,
            SizedBox(height: 30),
            Text(
              'Fixative',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.6,
                  fontFamily: 'OpenSans',
                  color: Color(0xFF483C30)),
            ),
            SizedBox(height: 20),
            buttonSection2,
            SizedBox(height: 92),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        height: 50,
                        child: FlatButton(
                            onPressed: () => {
                                  Navigator.pushNamed(
                                      context, '/new_plant_detail')
                                },
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.6,
                                  fontFamily: 'OpenSans',
                                  color: Colors.white),
                            )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            colors: [Color(0xFF866A50), Color(0xFF866A50)],
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
