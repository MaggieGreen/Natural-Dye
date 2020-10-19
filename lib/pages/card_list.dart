import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List categories = ['Sub1', 'Sub2', 'Sub3', 'Sub4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3ECE3),
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image and name
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 80.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/plantimagec3.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 34.0, top: 80.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Maggie Green',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0,
                          color: Color(0xFF483C30)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_city,
                            color: Color(0xFF483C30),
                            size: 17.0,
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Text(
                            'San Francisco- CA',
                            style: TextStyle(color: Color(0xFF483C30)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          //follow numbers
          Padding(
            padding: const EdgeInsets.only(
                right: 24.0, left: 24.0, top: 20.0, bottom: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '10K',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 24.0,
                          color: Color(0xFF483C30)),
                    ),
                    Text(
                      'followers',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          color: Color(0xFF483C30)),
                    )
                  ],
                ),
                Container(
                  color: Color(0xFF483C30),
                  width: 0.2,
                  height: 22.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '298',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 24.0,
                          color: Color(0xFF483C30)),
                    ),
                    Text(
                      'following',
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          color: Color(0xFF483C30)),
                    )
                  ],
                ),
                Container(
                  color: Color(0xFF483C30),
                  width: 0.2,
                  height: 22.0,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      right: 18.0, left: 18.0, top: 8.0, bottom: 8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          colors: [Color(0xFFFDC973), Color(0xFFF29778)],
                          begin: Alignment.bottomRight,
                          end: Alignment.centerLeft)),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: Color(0xFF483C30)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 24.0, left: 24.0, top: 20.0, bottom: 12.0),
                  child: Text(
                    'Artwork',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24.0,
                        color: Color(0xFF483C30)),
                  ),
                ),
                Container(
                  height: 40.0,
                  child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return index == 1
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  categories[index],
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 16),
                                )
                              ],
                            )
                          : Text(
                              categories[index],
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.9),
                                  fontSize: 16),
                            );
                    },
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
