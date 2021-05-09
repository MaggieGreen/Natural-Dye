import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BoilMethod extends StatefulWidget {
  @override
  _BoilMethodState createState() => _BoilMethodState();
}

class _BoilMethodState extends State<BoilMethod> {
  Image img;
  Image imgUp = Image.asset(
    'assets/images/ink_loop.gif',
  );
  Image imgDown = Image.asset(
    'assets/images/avocado.png',
  );
  @override
  void initState() {
    super.initState();
    img = imgUp;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFDFA),
        title: ProgressBar2(),
        iconTheme: IconThemeData(color: Color(0xFF483C30)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.skip_next),
            onPressed: () {
              Navigator.pushNamed(context, '/tutorial/filter');
            },
          )
        ],
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: GestureDetector(
              child: img,
              onTapDown: (tap) {
                setState(() {
                  img = imgDown;
                });
              },
              onTapUp: (tap) {
                setState(() {
                  img = imgUp;
                });
              },
            ),
          )
        ],
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
        Image.asset(
          "assets/images/process4.png",
          width: 240,
        )
      ],
    );
  }
}
