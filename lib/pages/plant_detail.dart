import 'package:flutter/material.dart';

class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
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
                    topRight: const Radius.circular(50.0),
                  ),
                ),
                child: Container(
                  child: Column(),
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
