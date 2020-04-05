import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      // appBar: new AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: new Text('Home'),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(24, 0, 100, 0),
                  child: Column(
                    // column position
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Daily for you',
                        style: TextStyle(
                          fontFamily: 'CantataOne',
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Who knew that those delicious green avocado would produce the most lovely blush pink?',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      ),
                      SizedBox(height: 30),
                      FlatButton(
                        onPressed: () => {Navigator.pushNamed(context, '/plantdetail')},
                        child: Text(
                          'Get the details',
                          style: TextStyle(
                            fontWeight: FontWeight.w700
                          ),
                          ),
                        color: Colors.transparent,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.black, width: 2.0)
                        ),
                        // splashColor: Colors.redAccent,
                      ),
                      SizedBox(height: 40),
                    ],),
                  // child: Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text('Daily for you',
                  //   style: TextStyle(
                  //     fontSize: 30, 
                  //     height: 1.5, 
                  //     fontFamily: 'CantataOne', 
                  //     // fontWeight: FontWeight.w600, 
                  //     color: Colors.white
                  //     ),), 
                  //   ),
                  height: 508,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover)),
                  ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 50.0,
              child: ListTile(
                leading: Text("Explore Natural Dye ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                // trailing: Icon(Icons.chevron_right,color: Colors.black,),
              )
            ),
            Container(
              height: 210.0,
              padding: EdgeInsets.only(left: 24.0),
              child: ListView.builder(
                itemBuilder: (context,index){
                  return Padding(
                    padding: EdgeInsets.only(right: 30.0,top: 0,bottom: 10.0),
                    child: Container(
                      width: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blue,
                        image: DecorationImage(image: AssetImage("assets/images/onboarding${index+1}.png"),fit: BoxFit.cover),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                                // blurRadius: 5.0,
                                color: Colors.black38,
                              )
                        ]
                      )
                    ),
                    );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                addAutomaticKeepAlives: true,
                cacheExtent: 1000.0,
                ),
            ),
          ],
          ),
    ); 
  }
}
