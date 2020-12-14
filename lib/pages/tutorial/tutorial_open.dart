import 'package:flutter/material.dart';

class NewOpen extends StatefulWidget {
  @override
  _NewOpenState createState() => _NewOpenState();
}

class _NewOpenState extends State<NewOpen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3ECE3),
      body: Stack(
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("assets/images/tutorial_open.png"),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //full width
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(24.0, 200.0, 0.0, 0.0),
                  child: Text(
                    'Explore the',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.6,
                        fontFamily: 'CantataOne',
                        color: Color(0xFF483C30)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(24.0, 4.0, 0.0, 0.0),
                  child: Text(
                    'Natural Lover,',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.6,
                        fontFamily: 'CantataOne',
                        color: Color(0xFF483C30)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(24.0, 6.0, 0.0, 0.0),
                  child: Text(
                    'See the transition from plants to art',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.6,
                        fontFamily: 'OpenSans',
                        color: Color(0xFF483C30)),
                  ),
                ),
                SizedBox(
                  height: 420.0,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 50,
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.pushNamed(
                                            context, '/tutorial/level')
                                      },
                                  child: Text(
                                    'Start',
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
                                  colors: [
                                    Color(0xFF866A50),
                                    Color(0xFF866A50)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              )))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
