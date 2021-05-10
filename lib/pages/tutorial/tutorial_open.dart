import 'package:flutter/material.dart';

class NewOpen extends StatefulWidget {
  @override
  _NewOpenState createState() => _NewOpenState();
}

class _NewOpenState extends State<NewOpen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFDFA),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/images/tutorialbg.png"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(24, 110, 0, 0),
                    child: Text(
                      'Practice Joy',
                      style: TextStyle(
                          fontFamily: 'CantataOne',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.6,
                          fontSize: 23.0,
                          color: Color(0xFF483C30)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: Text(
                      'See the transition from plants to art. Follow our tutorial steps to become a tie-dye master',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.6,
                          fontFamily: 'OpenSans',
                          color: Color(0xFF483C30)),
                    ),
                  ),
                  GridCards()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveProjectsCard extends StatelessWidget {
  final Color cardColor;
  final String img;
  final String title;
  final String subtitle;

  ActiveProjectsCard({this.cardColor, this.img, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          padding: EdgeInsets.all(20.0),
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
                  Image.asset(img, width: 136, height: 110, fit: BoxFit.fill),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 16.0,
                      color: Color(0xFF5A4F43),
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
                      color: Color(0xFF5A4F43),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    color: Color(0xFFC9C0B5),
                    width: 130.0,
                    height: 4.0,
                  )
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
                    {Navigator.pushNamed(context, '/tutorial/stackorder')},
                child: ActiveProjectsCard(
                  cardColor: Color(0xFFE5DCD2),
                  title: 'Step One',
                  subtitle: 'Extract Dye',
                  img: 'assets/images/StepOne.png',
                ),
              ),
              SizedBox(width: 20.0),
              ActiveProjectsCard(
                cardColor: Color(0xFFE5DCD2),
                title: 'Step Two',
                subtitle: 'Tie fabric',
                img: 'assets/images/StepTwo.png',
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ActiveProjectsCard(
                cardColor: Color(0xFFE5DCD2),
                title: 'Step Three',
                subtitle: 'Dyebath',
                img: 'assets/images/StepThree.png',
              ),
              SizedBox(width: 20.0),
              GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/none')},
                child: ActiveProjectsCard(
                  cardColor: Color(0xFFE5DCD2),
                  title: 'Step Four',
                  subtitle: 'Fixative color',
                  img: 'assets/images/StepFour.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
