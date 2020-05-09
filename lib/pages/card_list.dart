import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   child: AppBar(
      //     leading: new Container(),
      //     backgroundColor: Colors.white,
      //     // status bar color
      //     brightness: Brightness.light,
      //     elevation: 0.0,
      //   ),
      //   preferredSize: Size.fromHeight(10.0),
      // ),

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(24, 0, 100, 0),
            child: Column(
              // column position
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Chip(
                  // avatar: CircleAvatar(
                  //   backgroundColor: Colors.grey,
                  // ),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                  label: Text('Seasonal Pick'),
                ),
                Text(
                  'Spring’s Marigold',
                  style: TextStyle(
                      fontFamily: 'CantataOne',
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(height: 10),
                Text(
                  'Bright and pleasant yellow dye',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(height: 20),
                //old link to detail page buttom style
                FlatButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, '/plantdetail')},
                  child: Text(
                    'Get the details',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  color: Colors.transparent,
                  textColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black, width: 2.0)),
                  // splashColor: Colors.redAccent,
                ),
                SizedBox(height: 30),
              ],
            ),
            height: 482,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 50.0,
              child: ListTile(
                leading: Text(
                  "Explore Natural Dye ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                // trailing: Icon(Icons.chevron_right,color: Colors.black,),
              )),
          SizedBox(height: 10),
          Container(
            height: 210.0,
            padding: EdgeInsets.only(left: 24.0),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(
                        context, '/timelinevideo/timeline_video_one')
                  },
                  child: Container(
                      margin:
                          EdgeInsets.only(right: 30.0, top: 0, bottom: 10.0),
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/feature${index + 1}.jpg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              // blurRadius: 5.0,
                              color: Colors.black38,
                            )
                          ])),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              addAutomaticKeepAlives: true,
              cacheExtent: 1000.0,
            ),
          ),
          // SizedBox(height: 44),
          // Container(
          //   height: 20.0,
          //   color: Color(0xFFCDCDB8),
          // ),
        ],
      ),
    );
  }
}
