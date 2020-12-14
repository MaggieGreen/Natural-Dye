import 'package:flutter/material.dart';

class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDF9F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFFDF9F3),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.view_list),
            onPressed: () {
              print('TutorialMenu');
            },
          )
        ],
        iconTheme: IconThemeData(color: Color(0xFF483C30)),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(24, 20, 0, 0),
            child: Text(
              'Craft studio',
              style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.6,
                  fontSize: 32.0,
                  color: Color(0xFF483C30)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(24, 10, 24, 0),
            child: Text(
              'Whether you are planning to dye fabric or yarn, follow our tutorial steps to become a tie-dye master.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.6,
                  fontFamily: 'OpenSans',
                  color: Color(0xFF483C30)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          GridCards()
        ],
      ),
    );
  }
}

class ActiveProjectsCard extends StatelessWidget {
  final Color cardColor;
  final String title;
  final String subtitle;
  final String img;

  ActiveProjectsCard({this.cardColor, this.title, this.subtitle, this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.all(22.0),
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
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.6,
                      fontFamily: 'OpenSans',
                      color: Colors.white54,
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
      ],
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
              GestureDetector(
                onTap: () =>
                    {Navigator.pushNamed(context, '/tutorial/choose_avocado')},
                child: ActiveProjectsCard(
                  cardColor: Color(0xFF866A50),
                  title: 'Step 1',
                  subtitle: 'Extract Dye',
                  img: 'assets/images/todo.png',
                ),
              ),
              SizedBox(width: 20.0),
              ActiveProjectsCard(
                cardColor: Color(0xFFDEC6A3),
                title: 'Step 2',
                subtitle: 'Tie fabric',
                img: 'assets/images/todo.png',
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ActiveProjectsCard(
                cardColor: Color(0xFFDEC6A3),
                title: 'Step 3',
                subtitle: 'Dyebath',
                img: 'assets/images/todo.png',
              ),
              SizedBox(width: 20.0),
              GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/none')},
                child: ActiveProjectsCard(
                  cardColor: Color(0xFFDEC6A3),
                  title: 'Step 4',
                  subtitle: 'Fixative color',
                  img: 'assets/images/todo.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
