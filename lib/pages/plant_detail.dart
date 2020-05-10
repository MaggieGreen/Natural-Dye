// import 'dart:js';
import 'package:flutter/material.dart';

class PlantDetail extends StatefulWidget {
  @override
  _PlantDetailState createState() => _PlantDetailState();
}

class _PlantDetailState extends State<PlantDetail> {
  //color picker
  var colorsArray = [
    [Colors.blue, Colors.red, Colors.yellow],
    [Colors.orange, Colors.green, Colors.purple],
    [Colors.lime, Colors.amber, Colors.pink]
  ];
  var _fabricColor = 0;
  var _fixativeColor = 0;
  var _myColor = Color(0xFFE5B436);

  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return new Container(
              height: MediaQuery.of(context).size.height * 0.75,
              // padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              color: Colors.transparent,
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(50.0),
                  ),
                ),
                child: Container(
                  child: Text("Color result"),
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    GestureDetector _buildButtonColumn(
        Color color, IconData icon, String label, dynamic onTap) {
      return GestureDetector(
        // key: _scaffoldKey,
        onTap: () {
          Navigator.pushNamed(context, label);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                color,
                IconData(0xe60e, fontFamily: 'Pigment'),
                'Pigment',
                () => {Navigator.pushNamed(context, '/colorpicker')}),
            //链接有问题
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(color,
                IconData(0xe633, fontFamily: 'MyIcons'), 'Material', () {}),
          ),
          Expanded(
            flex: 1,
            child: _buildButtonColumn(color,
                IconData(0xe633, fontFamily: 'MyIcons'), 'Fixative', () {}),
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    'Marigold',
                    style: TextStyle(
                        fontFamily: 'CantataOne',
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Put marigolds blossoms into a jar, poured in simmering water, swirl the mixture until the water turned yellow.',
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
