import 'package:flutter/material.dart';

class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF8F6),
      appBar: AppBar(
        backgroundColor: Color(0xFF96A97C),
        title: Text('Tie-dye studio'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.view_list),
            onPressed: () {
              print('TutorialMenu');
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(24, 20, 0, 0),
            child: Text(
              'Tie-Dye studio',
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF483C30)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
            child: Text(
              'Legible graphics and the interactive animation tutorial makes learning easy and fun.',
              style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF483C30)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GridCards()
          // GridDashboard()
        ],
      ),
    );
  }
}

// class GridDashboard extends StatelessWidget {
//   Items item1 = new Items(
//       title: "Step 1",
//       subtitle: "Collect plants color",
//       img: "assets/images/todo.png");

//   // ItemsActive item1 = new ItemsActive(
//   //   title: "Step 1",
//   //   subtitle: "Collect plants color",
//   //   img: "assets/images/todo.png");

//   Items item2 = new Items(
//     title: "Step 2",
//     subtitle: "Tie fabric",
//     img: "assets/images/todo.png",
//   );
//   Items item3 = new Items(
//     title: "Step 3",
//     subtitle: "Dyebath your work",
//     img: "assets/images/todo.png",
//   );
//   Items item4 = new Items(
//     title: "Step 4",
//     subtitle: "Fixative your color",
//     img: "assets/images/todo.png",
//   );

//   @override
//   Widget build(BuildContext context) {
//     List<Items> myList = [item1, item2, item3, item4];
//     var color = 0xFF96A97C;
//     return Flexible(
//       child: GridView.count(
//           //container size
//           childAspectRatio: 0.65,
//           padding: EdgeInsets.only(left: 24, right: 24),
//           crossAxisCount: 2,
//           crossAxisSpacing: 25,
//           mainAxisSpacing: 25,
//           children: myList.map((data) {
//             return Container(
//               decoration: BoxDecoration(
//                   color: Color(color), borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   // Container(
//                   //   child: Column(
//                   //     children: [

//                   //     ],
//                   //   )
//                   // )
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(12, 20, 0, 0),
//                     child: Text(
//                       data.title,
//                       style: TextStyle(
//                           fontFamily: 'Open Sans',
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 8,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
//                     child: Text(
//                       data.subtitle,
//                       style: TextStyle(
//                           fontFamily: 'Open Sans',
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 14,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
//                     child: Stack(
//                       children: [
//                         Container(
//                           height: 5.0,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(2.0),
//                               color: Color(0xFFB4C2A3)),
//                         ),
//                         Container(
//                           height: 5.0,
//                           width: 20,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(2.0),
//                               color: Color(0xFFFFFFFF)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 14,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
//                     child: Image.asset(
//                       data.img,
//                       width: 42,
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }).toList()),
//     );
//   }
// }

// class Items {
//   String title;
//   String subtitle;
//   String img;
//   Items({this.title, this.subtitle, this.img});
// }

// class ItemsActive {
//   String title;
//   String subtitle;
//   String img;
//   ItemsActive({this.title, this.subtitle, this.img});
// }

class ActiveProjectsCard extends StatelessWidget {
  final Color cardColor;
  final String title;
  final String subtitle;
  final String img;
  final String liner;

  ActiveProjectsCard(
      {this.cardColor, this.title, this.subtitle, this.img, this.liner});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(15.0),
        height: 250,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 16.0,
                    color: Colors.white54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  img,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GridCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              ActiveProjectsCard(
                cardColor: Color(0xFFB4C2B3),
                title: 'Step 1',
                subtitle: 'Collect plants color',
                img: 'assets/images/todo.png',
              ),
              SizedBox(width: 20.0),
              ActiveProjectsCard(
                cardColor: Color(0xFFB4C2C3),
                title: 'Step 2',
                subtitle: 'Tie fabric',
                img: 'assets/images/todo.png',
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ActiveProjectsCard(
                cardColor: Color(0xFFB4C2A3),
                title: 'Step 3',
                subtitle: 'Dyebath your work',
                img: 'assets/images/todo.png',
              ),
              SizedBox(width: 20.0),
              ActiveProjectsCard(
                cardColor: Color(0xFFB4C2D3),
                title: 'Step 4',
                subtitle: 'Fixative your color',
                img: 'assets/images/todo.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
