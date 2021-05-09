import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPlantDetail extends StatefulWidget {
  @override
  _NewPlantDetail createState() => _NewPlantDetail();
}

class _NewPlantDetail extends State<NewPlantDetail> {
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
                                      '1.9mi, San Francisco',
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
                                              _subtitle[index].name,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            value: _material[index].selected,
                                            onChanged: (val) {
                                              _material[index].selected = val;
                                              setState(() {
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
    var _activeTab = 0;
    return Scaffold(
      backgroundColor: Color(0xFFFDF9F3),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Color(0xFFF3ECE3),
                expandedHeight: 430.0,
                floating: false,
                pinned: true,
                centerTitle: true,
                // title: Text("Marigold",
                //     style: TextStyle(
                //       fontFamily: 'CantataOne',
                //       color: Color(0XFF483C30),
                //       fontSize: 24.0,
                //     )),
                iconTheme: IconThemeData(color: Color(0xFF483C30)),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      print('saved');
                    },
                  ),
                  // Builder(builder: (context) {
                  //   activeTab = DefaultTabController.of(context).index;
                  //   return;
                  // })
                ],
                flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                  'assets/images/marigold_detail.png',
                  fit: BoxFit.cover,
                )),
              ),
              new SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  new TabBar(
                    labelStyle: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    labelColor: Color(0XFF5A4F43),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Color(0XFF866A50),
                    indicatorWeight: 2.0,
                    //indicatorPadding: EdgeInsets.only(bottom: 20.0),
                    tabs: [
                      GestureDetector(
                          child: new Tab(
                              // child: SvgPicture.asset('assets/pngs/cotton.svg'),
                              icon: SvgPicture.asset(
                                  'assets/pngs/information_active.svg',
                                  width: 44.0),
                              iconMargin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              // icon: Icon(Icons.lightbulb_outline),
                              text: "Overview")),
                      GestureDetector(
                          child: new Tab(
                              icon: SvgPicture.asset(
                                  'assets/pngs/extract${_activeTab == 1 ? '_active' : '_deactive'}.svg',
                                  width: 44.0),
                              // icon: SvgPicture.asset(
                              //     _activeTab == 1
                              //         ? 'assets/pngs/extract_deactive.svg'
                              //         : 'assets/pngs/extract_active.svg',
                              //     width: 44.0),
                              iconMargin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              text: "Extract"),
                          onTap: () {
                            _activeTab = 1;
                          }),
                      new Tab(
                          icon: SvgPicture.asset(
                              'assets/pngs/materials_deactive.svg',
                              width: 44.0),
                          iconMargin: EdgeInsets.fromLTRB(0, 5, 0, 0),
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
                            "Marigolds are one of the easiest flowers to experiment with, due to accessibility and a simple dye process.",
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
                          Image.asset('assets/pngs/cotton_active.png'),
                          // SizedBox(height: 20.0),
                          // Image.asset('assets/icons/mic.svg'),
                          SvgPicture.asset('assets/pngs/cotton.svg'),
                          SvgPicture.string(
                              '''<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100">
<path style="fill:blue;" d="M30.12,32.38S30.41,12.9,53.9,12.9,76.82,32.38,76.82,32.38s16.26,2,16.26,17.62-9.7,20.31-14.31,21.15a13.61,13.61,0,0,1-8-1S68.62,72,67.92,72.43s-1.79,1.11-1.79,1.11-.84,5.7-5.3,8.52-5.84,2-5.84,2v5.26s.29,1.23-1.52,1.23-1.53-1.23-1.53-1.23L52,84a11,11,0,0,1-5.7-2.13c-2.31-1.94-4.24-4.25-4.69-5.5s-.84-2.75-.84-2.75-2.6-1.73-2.94-2S36.2,70.2,36.2,70.2s-8.4,4.57-17.57-4.61-4.26-23.91.87-28.4,8.68-4.62,8.68-4.62Z"/>
<path style="fill:${true ? 'yellow' : 'green'};fill-rule:evenodd;" d="M86.14,46.09C84,29.18,69.91,28.93,69.91,28.93s.87-6.28-6.08-13.11S46.56,9.44,46.56,9.44s-7.58,0-13.74,3.74c-9.59,5.11-9.61,15.75-9.61,15.75s-2-.34-6.33,1.64-9,9-9.71,14.17A21.62,21.62,0,0,0,13.92,64.3c7,6.54,15.42,2.43,15.42,2.43a24.4,24.4,0,0,0,3.23,3c.32.21.81.57,1.51,1,.09.46.19.92.27,1.19a12.12,12.12,0,0,0,4.09,5.75A13.22,13.22,0,0,0,45,80.52l0,7.18s0,1.13,1.49,1.13a1.49,1.49,0,0,0,1.53-1.44V80.61s1.6-.23,2.23-.38,2.06-.18,5.49-3.16a11.21,11.21,0,0,0,3.4-7.18,19.64,19.64,0,0,0,4.5-3.19,15.46,15.46,0,0,0,6.89,1.2C75.69,67.81,87.43,62,86.14,46.09ZM47,76.82c-5.68.05-7.79-3.76-8-4.22a32.61,32.61,0,0,0,7.63.81h.55a22.58,22.58,0,0,0,7.56-1.34A8.23,8.23,0,0,1,47,76.82ZM61.45,61.9a10.48,10.48,0,0,1-.82,1.3l-.26.37a13.6,13.6,0,0,1-5.36,4,24.63,24.63,0,0,1-8.17,1.56,26.63,26.63,0,0,1-13.45-4,9,9,0,0,1-.89-.79c-1.18-1.3-1.59-3.12-2.19-4.84a40,40,0,0,1-1.19-6.28,42.54,42.54,0,0,1,5.39,1.05l5.32,1.65S45.27,44.6,47,44.6c.92,0,3,3.12,4.24,6.08a23.3,23.3,0,0,1,1.48,5.09l11.08-2.11A27.62,27.62,0,0,1,61.45,61.9Zm18.36-4a13.09,13.09,0,0,1-9.51,6.19,15.74,15.74,0,0,1-5.08-.82,36.28,36.28,0,0,0,1.3-4c.71-2.85,2.32-6.18-.13-8.63s-10.74.63-10.74.63-4.33-10.51-8.72-10.51-9.09,10.42-9.09,10.42-2.76-.77-4.23-1.13S28,48.79,26.47,50s-1.24,3-.65,7.06a24.44,24.44,0,0,0,1.82,6.27,12.2,12.2,0,0,1-1.33.4,10.72,10.72,0,0,1-10.06-2.47C9.94,55.46,10.35,49,11,44.36A13.94,13.94,0,0,1,18.74,34a18,18,0,0,1,8.34-1.26,17.26,17.26,0,0,1,1.19-8.94,15.09,15.09,0,0,1,5.42-6.56,24.52,24.52,0,0,1,6.3-3,23.87,23.87,0,0,1,6.57-.9,20.46,20.46,0,0,1,7.65,1.23,19.24,19.24,0,0,1,7.45,4.51,16.24,16.24,0,0,1,4.21,7.52,42.88,42.88,0,0,1,.18,6.13,14.13,14.13,0,0,1,11.06,3.11,15.61,15.61,0,0,1,5.09,9.85A17.7,17.7,0,0,1,79.81,57.89Z"/>
<path style="fill:${true ? 'yellow' : 'green'};fill-rule:evenodd;" d="M72.27,36.91c1.16.31,4.36.57,6.43,5.85a14.82,14.82,0,0,1,.63,9.94c-.28,1.57-1.7,3.79-2.8,3.33s-.83-1.9-.22-3.71,1-5.49.37-7.16-1.24-3.72-3.37-4.93-3.51-1.55-2.86-2.61A1.63,1.63,0,0,1,72.27,36.91Z"/></svg>''')
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
        height: 60,
        padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 50,
                child: FlatButton(
                    onPressed: () =>
                        // {Navigator.pushNamed(context, '/colorpicker')},
                        {Navigator.pushNamed(context, '/emulator_intro')},
                    child: Text(
                      "Add to material list",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.6,
                          fontFamily: 'OpenSans',
                          color: Colors.white),
                    )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    colors: [Color(0xFF866A50), Color(0xFF866A50)],
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
                color: Color(0xFF866A50),
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
  //double get minExtent => 74.0;
  @override
  double get maxExtent => 100.0;
  //double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
    // Action action
  ) {
    return Container(
      height: maxExtent,
      color: Color(0xFFFDF9F3), //Add a color to Avoid overlapping
      child: _tabBar,
    );
  }

  // Builder(builder: (context) {
  //   activeTab = DefaultTabController.of(context).index;
  //   return;
  // })

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
