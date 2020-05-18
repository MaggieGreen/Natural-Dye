import 'package:flutter/material.dart';

class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  var _material = [
    Material('Marigold petals'),
    Material('Water'),
    Material('Alum'),
    Material('Fabric'),
    Material('Cheese cloth')
  ];

  var _subtitle = [
    Material('1111'),
    Material('222'),
    Material('333'),
    Material('444'),
    Material('555'),
  ];

  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return new Container(
              height: MediaQuery.of(context).size.height * 0.75,
              // padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              color: Colors.transparent,
              child: new Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(15.0),
                    topRight: const Radius.circular(15.0),
                  ),
                ),
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(24.0, 30.0, 0.0, 0.0),
                        child: Text(
                          'Shops near you',
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF323232)),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        padding: EdgeInsets.fromLTRB(24.0, 60.0, 24.0, 0.0),
                        color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 7,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/michaelsSF.png'),
                                          fit: BoxFit.cover)),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.transparent,
                                )),
                            Expanded(
                              flex: 12,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Michaels',
                                      style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF323232)),
                                    ),
                                    Text(
                                      '1.8mi, San Francisco',
                                      style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF323232)),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      'Chain retailer carrying art, hobby supplies plus home decor.',
                                      style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF323232)),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  // color: Colors.amber,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(24.0, 170.0, 0.0, 0.0),
                        child: Text(
                          'Material List',
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF323232)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(24.0, 190.0, 0.0, 0.0),
                        child: Text(
                          'Marigold with cotton and alum',
                          style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF323232)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(24.0, 220.0, 24.0, 0.0),
                        child: ListView.builder(
                            itemCount: _material.length,
                            itemBuilder: (BuildContext context, int index) {
                              return new Container(
                                child: new Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      new Card(
                                        child: new Container(
                                          child: CheckboxListTile(
                                            title: Text(
                                              _material[index].name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            subtitle: Text(
                                              _material[index].subtitle,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            value: _material[index].selected,
                                            onChanged: (val) {
                                              setState(() {
                                                _material[index].selected = val;
                                                if (!_material[index]
                                                    .selected) {
                                                  print(
                                                      '${_material[index].name}: i am absent');
                                                }
                                                if (_material[index].selected) {
                                                  print(
                                                      '${_material[index].name}: i am present');
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
                            }),
                      )
                    ],
                  ),
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 370.0,
                floating: false,
                pinned: true,
                centerTitle: true,
                title: Text("Marigold",
                    style: TextStyle(
                      fontFamily: 'CantataOne',
                      color: Colors.white,
                      fontSize: 24.0,
                    )),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      print('saved');
                    },
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                  'assets/images/testplant.png',
                  fit: BoxFit.cover,
                )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(icon: Icon(Icons.info), text: "Overview"),
                      Tab(icon: Icon(Icons.lightbulb_outline), text: "Extract"),
                      Tab(
                          icon: Icon(Icons.lightbulb_outline),
                          text: "Materials"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Center(
            child: TabBarView(
              children: <Widget>[
                new Container(
                  height: 20.0,
                  color: Colors.white,
                ),
                new Container(
                  height: 20.0,
                  color: Colors.red,
                ),
                new Container(
                  height: 20.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      //Add to material list
      bottomNavigationBar: Container(
        height: 56,
        padding: EdgeInsets.only(left: 20.0),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 50,
                child: FlatButton(
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/colorpicker')},
                    child: Text(
                      "Add to material list",
                      style: TextStyle(color: Colors.white),
                    )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [
                      Colors.pink,
                      Colors.pinkAccent,
                      Colors.purpleAccent
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: FlatButton(
                onPressed: _showModalSheet,
                color: Color(0xFF323232),
                child: Icon(
                  Icons.shopping_basket,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(14),
                shape: CircleBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class Material {
  var name = 'Marigold petals';
  var subtitle = 'Note';
  var selected = false;

  Material(this.name);
}
