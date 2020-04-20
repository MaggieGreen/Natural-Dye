// import 'dart:js';
import 'package:flutter/material.dart';

class PlantDetail extends StatefulWidget {
  @override
  _PlantDetailState createState() => _PlantDetailState();
}

class _PlantDetailState extends State<PlantDetail> {
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
            color: Colors.greenAccent,
            child: new Center(
              child: new Text("Hi ModalSheet"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        // key: _scaffoldKey,
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
                color, IconData(0xe60e, fontFamily: 'MyIcons'), 'Pigment'),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Material'),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(
                color, IconData(0xe633, fontFamily: 'MyIcons'), 'Fixative'),
          ),
        ],
      ),
    );

    Widget buildAddToRow() {
      return Container(
        margin: EdgeInsets.only(left: 24),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 50,
                child: FlatButton(
                    // onPressed: _showPerBottomSheetCallBack,
                    onPressed: _showModalSheet,
                    child: Text(
                      "Add to material list",
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
                ),
              ),
              flex: 3,
            ),
            Expanded(
                child: Container(
              // margin: EdgeInsets.only(left: 30, right: 20),
              decoration: ShapeDecoration(
                  shape: CircleBorder(), color: Color(0xffdddddd)),
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              padding: EdgeInsets.all(10),
            ))
          ],
        ),
      );
    }

    return new Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                expandedHeight: 370.0,
                floating: false,
                pinned: true,
                flexibleSpace: new FlexibleSpaceBar(
                  background: Image.asset('assets/images/blackbeans1.jpg'),
                ))
          ];
        },
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    'Black Bean',
                    style: TextStyle(
                        fontFamily: 'CantataOne',
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'The black beans dye’s pigment has come from the soak the beans, and the remaining beans can continue to cook.',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Natural Dye Elements',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  buttonSection
                ],
              ),
            ),
            Expanded(
              child: buildAddToRow(),
            ),
          ],
        ),
      ),
    );
  }
}
