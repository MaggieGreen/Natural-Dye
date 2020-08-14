import 'package:flutter/material.dart';
import 'CustomShapeClipper.dart';

Color firstColor = Color.fromRGBO(255, 255, 255, 0.5);
Color secondColor = Color.fromRGBO(255, 255, 255, 0.2);

List<String> location = [
  'San Francisco(SF)',
  'Texas(TX)',
  'New York City(JFK)'
];

const TextStyle dropDownLabeStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

const TextStyle dropDownMeunItemStyle =
    TextStyle(color: Colors.black, fontSize: 16.0);

const TextStyle searchStyle =
    TextStyle(color: Color(0xFF99A2B0), fontSize: 16.0);

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var selectedLocationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        children: [
          HomeScreenTopPart(),
          SizedBox(
            height: 40.0,
          ),
          homeScreenBottomPart,
        ],
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
                  image: AssetImage('assets/images/testcity.png'),
                  fit: BoxFit.cover)),
          //location and search bar
          child: Container(
            height: 292.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 16.0,
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
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
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
                            value: 1,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
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
                          elevation: 2.0,
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
          Text("VIEW ALL",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0)),
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
  PlantCard("assets/images/Inspiration8.jpg", "Marigold", "Easy", "40min",
      "onTap: () => {Navigator.pushNamed(context, '/plantdetail')}"),
  PlantCard(
      "assets/images/Inspiration1.jpg", "Elderberry", "Middle", "1h40min", ""),
  PlantCard("assets/images/Inspiration4.jpg", "Avocado", "Middle", "1week", ""),
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
              onTap: () => {Navigator.pushNamed(context, '/plantdetail')},
              child: Container(
                height: 380.0,
                width: 210.0,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
                top: 20.0,
                child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text(
                          plantName,
                          style: TextStyle(
                              fontSize: 30,
                              height: 1.5,
                              fontFamily: 'OpenSans',
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                level,
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.5,
                                    fontFamily: 'OpenSans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Spacer(),
                              Text(
                                time,
                                style: TextStyle(
                                    fontSize: 16,
                                    height: 1.5,
                                    fontFamily: 'OpenSans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
