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
                    {Navigator.pushNamed(context, '/tutorial/select_plants')},
                child: ActiveProjectsCard(
                  cardColor: Color(0xFFB4C2B3),
                  title: 'Step 1',
                  subtitle: 'Collect plants color',
                  img: 'assets/images/todo.png',
                ),
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
              GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/none')},
                child: ActiveProjectsCard(
                  cardColor: Color(0xFFB4C2D3),
                  title: 'Step 4',
                  subtitle: 'Fixative your color',
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
