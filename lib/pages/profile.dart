import 'package:flutter/material.dart';
import 'CustomShapeClipper.dart';

Color firstColor = Color.fromRGBO(255, 255, 255, 0.5);
Color secondColor = Color.fromRGBO(255, 255, 255, 0.2);

List<String> location = ['San Francisco', 'Texas', 'New York City'];

const TextStyle dropDownLabeStyle =
    TextStyle(color: Color(0XFF5A4F43), fontSize: 16.0);

const TextStyle dropDownMeunItemStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.6,
    fontFamily: 'OpenSans',
    color: Color(0xFF483C30));

const TextStyle searchStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.6,
    fontFamily: 'OpenSans',
    color: Color(0xFFC4C4C4));

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var selectedLocationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF9F3),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenTopPart(),
            SizedBox(
              height: 30.0,
            ),
            homeScreenBottomPart,
          ],
        ),
      ),
    );
  }
}

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //Shape background need change Container to clip path
          // clipper: CustomShapeClipper(),
          //Image background
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(25.0),
                  bottomRight: const Radius.circular(25.0)),
              image: DecorationImage(
                  image: AssetImage('assets/images/locationbg.png'),
                  fit: BoxFit.cover)),
          //location and search bar
          child: Container(
            height: 340.0,
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                //Title
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24.0, 30.0, 24.0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Explore",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.6,
                            fontFamily: 'CantataOne',
                            color: Color(0xFF5A4F43)),
                      ),
                    ),
                  ),
                ),
                //Location
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.location_on,
                        color: Color(0XFF5A4F43),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      PopupMenuButton(
                        onSelected: (index) {
                          setState(() {
                            // selectedLocationIndex = index;
                          });
                        },
                        child: Row(
                          children: [
                            Text(
                              location[0],
                              style: dropDownLabeStyle,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0XFF5A4F43),
                            )
                          ],
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<int>>[
                          PopupMenuItem(
                            child: Text(
                              location[0],
                              style: dropDownMeunItemStyle,
                            ),
                            value: 0,
                          ),
                          PopupMenuItem(
                            child: Text(
                              location[1],
                              style: dropDownMeunItemStyle,
                            ),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text(
                              location[2],
                              style: dropDownMeunItemStyle,
                            ),
                            value: 2,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 126.0,
                ),
                //search
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: TextField(
                      controller: TextEditingController(
                          text: 'Search the keywords you want'),
                      style: searchStyle,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 13.0),
                        suffixIcon: Material(
                          elevation: 1.0,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

var homeScreenBottomPart = Column(
  children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Seasonal Dye Plant",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0)),
          Spacer(),
          // Text("VIEW ALL",
          //     style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0)),
        ],
      ),
    ),
    Container(
      height: 380.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // children: [
        //   Container(
        //     height: 310,
        //     width: 210,
        //     color: Colors.red,
        //   ),
        //   Container(
        //     height: 310,
        //     width: 210,
        //     color: Colors.green,
        //   ),
        //   Container(
        //     height: 310,
        //     width: 210,
        //     color: Colors.black,
        //   ),
        // ],
        children: plantCards,
      ),
    )
  ],
);

List<PlantCard> plantCards = [
  PlantCard("assets/images/newmarigold.png", "Marigold", "Easy", "40min",
      '/plantdetail'),
  PlantCard(
      "assets/images/elderberry.png", "Elderberry", "Middle", "1h40min", ""),
  PlantCard("assets/images/elderberry.png", "Avocado", "Middle", "1week", ""),
];

class PlantCard extends StatelessWidget {
  final String imagePath, plantName, level, time, dynamic;

  PlantCard(
      this.imagePath, this.plantName, this.level, this.time, this.dynamic);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: Stack(
          children: [
            InkWell(
              onTap: () => {Navigator.pushNamed(context, dynamic)},
              child: Container(
                  height: 380.0,
                  width: 252.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned.fill(
                top: 20.0,
                child: Align(
                    alignment: Alignment.center,
                    child: Column(
                        // children: [
                        //   Text(
                        //     plantName,
                        //     style: TextStyle(
                        //         fontSize: 30,
                        //         height: 1.5,
                        //         fontFamily: 'OpenSans',
                        //         color: Color(0xFF483C30),
                        //         fontWeight: FontWeight.w700),
                        //   ),
                        //   Padding(
                        //     padding: const EdgeInsets.symmetric(
                        //         horizontal: 40.0, vertical: 4.0),
                        //     child: Row(
                        //       mainAxisSize: MainAxisSize.max,
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         Text(
                        //           level,
                        //           style: TextStyle(
                        //               fontSize: 16,
                        //               height: 1.5,
                        //               fontFamily: 'OpenSans',
                        //               color: Color(0xFF483C30),
                        //               fontWeight: FontWeight.w400),
                        //         ),
                        //         Spacer(),
                        //         Text(
                        //           time,
                        //           style: TextStyle(
                        //               fontSize: 16,
                        //               height: 1.5,
                        //               fontFamily: 'OpenSans',
                        //               color: Color(0xFF483C30),
                        //               fontWeight: FontWeight.w400),
                        //         ),
                        //       ],
                        //     ),
                        //   )
                        // ],
                        )))
          ],
        ),
      ),
    );
  }
}
