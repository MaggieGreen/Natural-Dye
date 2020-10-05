import 'dart:io';

import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _totalPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  // PageController pageController;
  // Animatable<Color> background;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0XFF96A97C) : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Container(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              _currentPage = page;
              setState(() {});
            },
            children: <Widget>[
              //onboarding page
              _buildPageContent(
                  image: 'assets/images/onboarding1.png',
                  title: 'In Source',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.'),
              _buildPageContent(
                  image: 'assets/images/onboarding1.png',
                  title: 'In Gallery',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.'),
              _buildPageContent(
                  image: 'assets/images/onboarding1.png',
                  title: 'In Tutorial',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.'),
              //login page
              Container(
                //sign up page background image
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new AssetImage("assets/images/signupbg.png"),
                      fit: BoxFit.fill),
                ),
                // padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 80,
                      padding: EdgeInsets.fromLTRB(24.0, 120.0, 0.0, 0.0),
                      // color: Colors.amber,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(24.0, 30.0, 0.0, 0.0),
                            child: Text(
                              'Start the',
                              style: TextStyle(
                                  fontFamily: 'CantataOne',
                                  fontSize: 30,
                                  // fontWeight: FontWeight.w600,
                                  color: Color(0xFF323232)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(24.0, 65.0, 0.0, 0.0),
                            child: Text(
                              'exploration journey of',
                              style: TextStyle(
                                  fontFamily: 'CantataOne',
                                  fontSize: 30,
                                  // fontWeight: FontWeight.w600,
                                  color: Color(0xFF323232)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(24.0, 100.0, 0.0, 0.0),
                            child: Text(
                              'natural dyeing',
                              style: TextStyle(
                                  fontFamily: 'CantataOne',
                                  fontSize: 30,
                                  // fontWeight: FontWeight.w600,
                                  color: Color(0xFF323232)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 35.0, left: 24.0, right: 24.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFC4C4C4)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF96A97C)))),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFC4C4C4)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF96A97C)))),
                            obscureText: true,
                          ),
                          SizedBox(height: 5),
                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(
                                top: 15.0, left: 24.0, right: 0.0),
                            child: InkWell(
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF96A97C),
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage != 3
          ? Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(3,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                          color: Color(0xFF483C30),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      for (int i = 0; i < _totalPages; i++)
                        i == _currentPage
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false)
                    ]),
                  ),
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(_currentPage + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          color: Color(0xFF483C30),
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            )
          : InkWell(
              onTap: () => {Navigator.pushNamed(context, '/location')},
              child: Container(
                height: Platform.isIOS ? 75 : 60,
                color: Color(0xFF96A97C),
                alignment: Alignment.center,
                child: Text(
                  'GET STARTED NOW',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
    );
  }

  Widget _buildPageContent({
    String title,
    String body,
    String image,
  }) {
    return Container(
      //onbparding background
      color: Color(0xFFF3ECE3),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100.0,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 30,
                height: 2.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'CantataOne',
                color: Color(0xFF483C30)),
          ),
          SizedBox(height: 10),
          Text(
            body,
            style: TextStyle(
                fontSize: 16,
                height: 1.5,
                fontFamily: 'OpenSans',
                color: Color(0xFF483C30)),
          ),
          SizedBox(height: 30),
          Container(
            // color: Colors.amber,
            child: Image.asset(image),
          ),
        ],
      ),
    );
  }
}
