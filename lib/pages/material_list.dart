import 'package:flutter/material.dart';

class MaterialList extends StatefulWidget {
  @override
  _MaterialListState createState() => _MaterialListState();
}

class _MaterialListState extends State<MaterialList> {
  bool _isChecked = true;

  List<String> _texts = [
    "Dry Black Bean - 16oz",
    "Light-colored cotton fabric - 200g",
    "Water - Can Soak fabric",
    "Pot for soaking the beans - 1 item",
    "Line - Tie fabric",
    "Alum (Fixative) - 2g",
    "Large pot for mordanting - 1 item"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text('Material List'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 30, 24, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 25.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    width: 200.0,
                    color: Colors.amber,
                    child: new Stack(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Shop1'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    width: 200.0,
                    color: Colors.blue,
                    child: new Stack(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text('Shop2'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25.0),
              height: 420.0,
              color: Colors.grey[200],
              child: ListView(
                padding: EdgeInsets.all(5.0),
                children: _texts
                    .map((text) => CheckboxListTile(
                          title: Text(text),
                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val;
                            });
                          },
                        ))
                    .toList(),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        height: 50,
                        child: FlatButton(
                            onPressed: () =>
                                {Navigator.pushNamed(context, '/profile')},
                            child: Text(
                              'To Profile check your list',
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
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
