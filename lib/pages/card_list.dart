import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  textStyle() {
    return new TextStyle(
        fontFamily: 'Open Sans', color: Colors.black, fontSize: 16.0);
  }

  Container SeasonalPlants(
      String imageVal, String heading, String subHeading, dynamic String) {
    return Container(
      padding: EdgeInsets.only(right: 30),
      width: 300,
      child: Card(
          child: GestureDetector(
        onTap: () => {Navigator.pushNamed(context, '/plantdetail')},
        child: Wrap(
          children: <Widget>[
            Image(image: AssetImage(imageVal), fit: BoxFit.cover),
            ListTile(
              title: Text(heading,
                  style: TextStyle(
                      fontSize: 30,
                      height: 1.5,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700)),
              subtitle: Text(subHeading,
                  style: TextStyle(
                      fontSize: 16, height: 1.5, fontFamily: 'OpenSans')),
            )
          ],
        ),
      )),
    );
  }

  String value = "3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          leading: new Container(),
          backgroundColor: Colors.white,
          // status bar color
          brightness: Brightness.light,
          elevation: 0.0,
        ),
        preferredSize: Size.fromHeight(10.0),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            //title
            Container(
              padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Explore",
                  style: TextStyle(
                      fontFamily: 'CantataOne',
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //Location
                  Container(
                    padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            flex: 5,
                            child: Container(
                              child: Text('Seasonal Plants',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0)),
                            )),
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: DropdownButton(
                              items: <DropdownMenuItem<String>>[
                                DropdownMenuItem(
                                  child: Text(
                                    "San Francisco",
                                    style: TextStyle(
                                        color: value == "1"
                                            ? Colors.black
                                            : Colors.grey),
                                  ),
                                  value: "1",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "New York",
                                    style: TextStyle(
                                        color: value == "2"
                                            ? Colors.black
                                            : Colors.grey),
                                  ),
                                  value: "2",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Austin",
                                    style: TextStyle(
                                        color: value == "3"
                                            ? Colors.black
                                            : Colors.grey),
                                  ),
                                  value: "3",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Chicago",
                                    style: TextStyle(
                                        color: value == "4"
                                            ? Colors.black
                                            : Colors.grey),
                                  ),
                                  value: "4",
                                ),
                              ],
                              hint: new Text("Choose Location"), // 当没有初始值时显示
                              onChanged: (selectValue) {
                                //选中后的回调
                                setState(() {
                                  value = selectValue;
                                });
                              },
                              value: value, // 设置初始值，要与列表中的value是相同的
                              elevation: 10, //设置阴影
                              style: new TextStyle(
                                  //设置文本框里面文字的样式
                                  color: Colors.black,
                                  fontSize: 15),
                              iconSize: 40, //设置三角标icon的大小
                              underline: Container(
                                height: 1,
                                color: Color(0xFF323232),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //plant card
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    padding: EdgeInsets.fromLTRB(20, 0, 24, 0),
                    height: 500,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SeasonalPlants(
                            "assets/images/Inspiration8.jpg",
                            "Marigold",
                            "Cheerful gold yarn as well",
                            "onTap: () => {Navigator.pushNamed(context, '/plantdetail')}"),
                        SeasonalPlants("assets/images/Inspiration1.jpg",
                            "Avocado", "subheading2", ""),
                        SeasonalPlants("assets/images/Inspiration4.jpg",
                            "Indigo", "subheading3", ""),
                      ],
                    ),
                  ),
                  //test part2
                  Text(
                    'Demo Headline 2',
                    style: TextStyle(fontSize: 18),
                  ),
                  Card(
                    child: ListTile(
                        title: Text('Motivation $int'),
                        subtitle:
                            Text('this is a description of the motivation')),
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
