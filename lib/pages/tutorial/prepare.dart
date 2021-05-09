import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class Prepare extends StatefulWidget {
  Prepare({Key key}) : super(key: key);
  @override
  _PrepareState createState() => _PrepareState();
}

class _PrepareState extends State<Prepare> {
  var _necessary = [
    Necessary('Marigold petals', 'Fresh 4 cups or Dried 2 cups'),
    Necessary('Water', 'Enough to submerge petals'),
    Necessary('Alum', '2 tbsb'),
    Necessary('Fabric', 'colored cotton fabric'),
    Necessary('Cheese cloth', '50’’*50’’')
  ];

  var _optional = [
    Necessary('Gloves', 'Keep hands clean'),
    Necessary('Scales', 'Calculate weight accurately'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFDFA),
        title: ProgressBar2(),
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
      body: DefaultTabController(
        length: 2,
        child: Container(
          child: Column(
            children: [
              Container(
                width: 304,
                height: 290,
                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: AssetImage("assets/images/prepare.png"))),
              ),
              Container(
                // padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                margin: EdgeInsets.fromLTRB(38, 0, 38, 0),
                constraints: BoxConstraints.expand(height: 40),
                decoration: BoxDecoration(
                    color: Color(0xFFE5DCD2),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
                child: new TabBar(
                  unselectedLabelColor: Color(0xFF483C30),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFF866A50), Color(0xFF866A50)]),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent),
                  tabs: <Widget>[
                    new Tab(
                      text: "Necessary",
                    ),
                    new Tab(
                      text: "Optional",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      //Necessary part
                      Container(
                          padding: EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 0.0),
                          child: ListView.builder(
                            itemCount: _necessary.length,
                            itemBuilder: (BuildContext context, int index) {
                              return new Container(
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      new Card(
                                        child: new Container(
                                          child: CheckboxListTile(
                                            title: Text(
                                              _necessary[index].name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              _necessary[index].subtitle,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            value: _necessary[index].selected,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _necessary[index].selected =
                                                    value;
                                                if (!_necessary[index]
                                                    .selected) {
                                                  print(
                                                      '${_necessary[index].name}: i am present');
                                                }
                                                if (_necessary[index]
                                                    .selected) {
                                                  print(
                                                      '${_necessary[index].name}: none');
                                                }
                                              });
                                            },
                                          ),
                                          padding: EdgeInsets.all(5),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                      //Optional part
                      new Container(
                          padding: EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 0.0),
                          child: ListView.builder(
                            itemCount: _optional.length,
                            itemBuilder: (BuildContext context, int index) {
                              return new Container(
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      new Card(
                                        child: new Container(
                                          // decoration: BoxDecoration(
                                          //     border: Border.all(
                                          //         color: Colors.teal)),
                                          child: CheckboxListTile(
                                            title: Text(
                                              _optional[index].name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              _optional[index].subtitle,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            value: _optional[index].selected,
                                            onChanged: (bool value) {
                                              setState(() {
                                                _optional[index].selected =
                                                    value;
                                                if (!_optional[index]
                                                    .selected) {
                                                  print(
                                                      '${_optional[index].name}: i am present');
                                                }
                                                if (_optional[index].selected) {
                                                  print(
                                                      '${_optional[index].name}: none');
                                                }
                                              });
                                            },
                                          ),
                                          padding: EdgeInsets.all(5),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 34, 24, 34),
                child: ConfirmationSlider(
                  height: 50,
                  width: 327,
                  backgroundColor: Color(0xFFE5DCD2),
                  backgroundShape: BorderRadius.circular(10.0),
                  foregroundColor: Color(0xFF866A50),
                  foregroundShape: BorderRadius.circular(10.0),
                  icon: Icons.arrow_forward,
                  shadow: BoxShadow(
                    color: Color(0xFFE5DCD2),
                  ),
                  text: 'Slide to start',
                  textStyle: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0XFF483C30),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                  onConfirmation: () =>
                      Navigator.pushNamed(context, '/tutorial/boil_method'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
      children: [
        // The size box provides an immediate spacing between the widgets
        Image.asset(
          "assets/images/process3.png",
          width: 240,
        )
      ],
    );
  }
}

class Necessary {
  var name = 'Marigold petals';
  var subtitle = 'Note';
  bool selected = false;

  Necessary(this.name, this.subtitle);
}
