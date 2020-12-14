import 'package:flutter/material.dart';

class ChooseAvocado extends StatefulWidget {
  @override
  _ChooseAvocadoState createState() => _ChooseAvocadoState();
}

class _ChooseAvocadoState extends State<ChooseAvocado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF483C30)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.view_list),
            onPressed: () {
              print('TutorialMenu');
            },
          )
        ],
        elevation: 0,
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Avocado',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.6,
                      fontSize: 32.0,
                      color: Color(0xFF483C30)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(34, 10, 34, 0),
                  child: Text(
                    'Dyeing Fabric with Avocado Skins and Pits create a beautiful natural dye that comes out pink.',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.6,
                        fontFamily: 'OpenSans',
                        color: Color(0xFF483C30)),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: 280.0,
                  width: 220.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/avocado.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(34, 30, 34, 0),
                      child: Text(
                        'Choose the favourite color\nYou want to dye',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.6,
                          fontFamily: 'OpenSans',
                          color: Color(0xFF483C30),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // color: Colors.amber,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => {
                                Navigator.pushNamed(context, '/tutorial/puzzle')
                              },
                              child: ClipOval(
                                child: Container(
                                  width: 77,
                                  height: 77,
                                  color: Color(0XFFDBA99D),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Container(
                          // color: Colors.amber,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => {Navigator.pushNamed(context, '..')},
                              child: ClipOval(
                                child: Container(
                                  width: 77,
                                  height: 77,
                                  color: Color(0XFFFDC973),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                        ),
                        Container(
                          // color: Colors.amber,
                          child: Center(
                            child: GestureDetector(
                              onTap: () => {Navigator.pushNamed(context, '..')},
                              child: ClipOval(
                                child: Container(
                                  width: 77,
                                  height: 77,
                                  color: Color(0XFF9FAEB5),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                    //   child: Row(
                    //     children: [
                    //       SizedBox(
                    //         width: 24.0,
                    //       ),
                    //       Expanded(
                    //         child: Container(
                    //           height: 50,
                    //           child: FlatButton(
                    //               onPressed: () => {
                    //                     Navigator.pushNamed(
                    //                         context, '/colorpicker')
                    //                   },
                    //               child: Text(
                    //                 "Confirm",
                    //                 style: TextStyle(
                    //                     fontSize: 16,
                    //                     fontWeight: FontWeight.w700,
                    //                     letterSpacing: 0.6,
                    //                     fontFamily: 'OpenSans',
                    //                     color: Colors.white),
                    //               )),
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(8),
                    //             gradient: LinearGradient(
                    //               colors: [
                    //                 Color(0xFF866A50),
                    //                 Color(0xFF866A50)
                    //               ],
                    //               begin: Alignment.topLeft,
                    //               end: Alignment.bottomRight,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 24.0,
                    //       ),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
