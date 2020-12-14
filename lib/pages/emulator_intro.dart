import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmulatorIntro extends StatefulWidget {
  @override
  _EmulatorIntroState createState() => _EmulatorIntroState();
}

class _EmulatorIntroState extends State<EmulatorIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: new AppBar(
        backgroundColor: Color(0xFFF3ECE3),
        // title: new Text(
        //   'Emulator',
        //   style: TextStyle(
        //     color: Color(0xFF483C30),
        //     fontFamily: 'Open Sans',
        //     fontWeight: FontWeight.w600,
        //   ),
        // ),
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
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child:
                Lottie.asset('assets/lottie/emulator.json', fit: BoxFit.cover),
          ),
          Expanded(
              flex: 4,
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
                    // Positioned(
                    //     top: 20.0,
                    //     child: ClipOval(
                    //       child:
                    //           Image.asset('assets/images/marigolddetail1.jpg'),
                    //     )),
                    Positioned(
                      top: 60.0,
                      child: Text(
                        'Color Emulator',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.6,
                            fontSize: 32.0,
                            color: Color(0xFF483C30)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(34, 135, 34, 0),
                      child: Text(
                        'The natural dye effect is dynamic base the difference of fixative and fabric. \n \nEmulator helps you simulate the color you want to determine what kind of material you want to prepare.',
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 360, 0, 0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24.0,
                          ),
                          Expanded(
                            child: Container(
                              height: 50,
                              child: FlatButton(
                                  onPressed: () => {
                                        Navigator.pushNamed(
                                            context, '/colorpicker')
                                      },
                                  child: Text(
                                    "Star Emulator",
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
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
