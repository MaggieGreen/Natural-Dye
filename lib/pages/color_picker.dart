import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  var _myColor = Colors.blue;

  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showPerBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPerBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {
      _showPerBottomSheetCallBack = null;
    });

    _scaffoldKey.currentState
        .showBottomSheet((context) {
          return new Container(
            height: 460.0,
            color: Colors.purple,
            child: new Center(
              child: new Text('step1'),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPerBottomSheetCallBack = _showBottomSheet;
            });
          }
        });
  }

  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return new Container(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            color: Colors.white,
            child: new Column(
              children: <Widget>[
                SizedBox(height: 30),
                Text(
                  'Added to Material List',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                Image.asset('assets/images/feature2.jpg'),
                SizedBox(height: 20),
                Text(
                  'Let’s make your artwork',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            height: 50,
                            child: FlatButton(
                                onPressed: () => {
                                      Navigator.pushNamed(
                                          context, '/materiallist')
                                    },
                                child: Text(
                                  'Go to Check',
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
        });
  }

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
            _myColor = Colors.orange;
          });
        },
        onTapUp: (TapUpDetails details) {
          setState(() {
            _myColor = Colors.red;
          });
        },
        child: Column(
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
              print('call1');
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Wool', () {
              print('call2');
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Silk', () {
              print('call3');
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
                color, IconData(0xe60e, fontFamily: 'Pigment'), 'Alum', () {
              print('calla');
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Copper', () {
              print('callb');
            }),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Iron', () {
              print('callc');
            }),
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
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(100.0),
              margin: EdgeInsets.all(20.0),
              color: _myColor,
              child: Text('Result color'),
            ),
            // CircleAvatar(
            //   backgroundImage: AssetImage('assets/images/plantimage00.jpg'),
            //   minRadius: 90,
            //   maxRadius: 100,
            // ),
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
            SizedBox(height: 50),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        height: 50,
                        child: FlatButton(
                            onPressed: _showModalSheet,
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
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
