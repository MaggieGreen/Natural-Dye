import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        title: new Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Daily for you',
                    style: TextStyle(
                      fontSize: 24, 
                      height: 1.5, 
                      fontFamily: 'OpenSans', 
                      fontWeight: FontWeight.w600, 
                      color: Colors.white
                      ),),
                    ),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover)),
                  ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                // controller: ScrollController,
                itemBuilder: (context, position) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          width: 250.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  
                                ],
                              ),
                              )
                            ],
                          ),
                        )),
                      ),
                  );
                },
              ),
            ),
          ],
          ),
    ); 
  }
}