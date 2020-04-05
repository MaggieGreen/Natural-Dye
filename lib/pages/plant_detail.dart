import 'package:flutter/material.dart';

class PlantDetail extends StatefulWidget {
  @override
  _PlantDetailState createState() => _PlantDetailState();
}

class _PlantDetailState extends State<PlantDetail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                expandedHeight: 416.0,
                floating: false,
                pinned: true,
                flexibleSpace: new FlexibleSpaceBar(
                  background: Image.asset('assets/images/background.jpg'),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
