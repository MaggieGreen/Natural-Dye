import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FilterOut extends StatefulWidget {
  @override
  _FilterOutState createState() => _FilterOutState();
}

class _FilterOutState extends State<FilterOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3ECE3),
        // title: ProgressBar2(),
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
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(34.0, 24.0, 34.0, 0),
                child: Column(
                  children: [
                    Text("Filter out",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0XFF483C30),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                        "Harvest moment has arrived. Filter out the dye plants in the liquid. Let it steep overnight, then slowly filter out the avocado pits.Let it steep overnight, then slowly filter out the avocado pits.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.6,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF483C30))),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(34.0, 240.0, 34.0, 0),
              child: GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '..')},
                child: Container(
                  height: 380.0,
                  width: 330.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/filter.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Positioned.fill(
          //   top: 100,
          //   left: 24,
          //   right: 24,
          //   child: GestureDetector(
          //     onTap: () =>
          //         {Navigator.pushNamed(context, '/tutorial/boil_method')},
          //     child: Container(
          //       width: 300,
          //       child: Lottie.asset("assets/lottie/testonboarding.json",
          //           repeat: true, reverse: false),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 720, 0, 0),
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
                                  context, '/tutorial/unlocked_puzzle')
                            },
                        child: Text(
                          "Finish",
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
                        colors: [Color(0xFF866A50), Color(0xFF866A50)],
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
    );
  }
}
