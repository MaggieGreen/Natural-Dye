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
                      //material list
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
                                                      '${_material[index].name}: i am present');
                                                }
                                                if (_material[index].selected) {
                                                  print(
                                                      '${_material[index].name}: none');
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
      backgroundColor: Color(0xFFFDF9F3),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFFF3ECE3),
                expandedHeight: 370.0,
                floating: false,
                pinned: true,
                centerTitle: true,
                title: Text("Marigold",
                    style: TextStyle(
                      fontFamily: 'CantataOne',
                      color: Color(0XFF483C30),
                      fontSize: 24.0,
                    )),
                iconTheme: IconThemeData(color: Color(0xFF483C30)),
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
                  'assets/images/marigold_detail.jpg',
                  fit: BoxFit.cover,
                )),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Color(0XFF96A97C),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      //用图片做iconhttps://stackoverflow.com/questions/50198885/how-to-use-an-image-instead-of-an-icon-in-flutter
                      // Tab(
                      //     icon: Icon(
                      //       IconData(0xe605, fontFamily: 'Navi'),
                      //       size: 40.0,
                      //       color: Color(0xFF96A97C),
                      //     ),
                      //     text: "Overview"),
                      Tab(
                          icon: Icon(Icons.lightbulb_outline),
                          text: "Overview"),
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
                SingleChildScrollView(
                  padding: EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "01",
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0XFFC4C4C4),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            "Plant Infomation",
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0XFF483C30),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20.0),
                          Text(
                            "Marigolds are one of the easiest flowers to experiment with due to accessibility and a simple dye process.",
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0XFF483C30),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Image.asset('assets/images/marigolddetail1.jpg'),
                          SizedBox(height: 20.0),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "02",
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0XFFC4C4C4),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            "How to find or planting?",
                            style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Color(0XFF483C30),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                new Container(
                  height: 20.0,
                  color: Colors.red,
                ),
                new Container(
                  height: 20.0,
                  color: Colors.blue,
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
                    colors: [Color(0xFF96A97C), Color(0xFF96A97C)],
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
                color: Color(0xFF96A97C),
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
      color: Color(0xFFFDF9F3), //Add a color to Avoid overlapping
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
