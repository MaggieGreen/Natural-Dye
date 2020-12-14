import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
        color: isCurrentPage ? Color(0XFF5A4F43) : Colors.grey[300],
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
                  image: 'assets/lottie/onboarding2.json',
                  title: 'Find Source',
                  body:
                      'Find seasonal plant-based sources around you that you can extract pigments from.'),
              _buildPageContent(
                  image: 'assets/lottie/onboarding1.json',
                  title: 'Discover Gallery',
                  body:
                      'To explore natural dyes history, famous artworks, fashion products in virtual gallery.'),
              _buildPageContent(
                  image: 'assets/lottie/onboarding1.json',
                  title: 'Learn tutorial',
                  body:
                      'Interactive tutorials will guide you to become an eco-friendly tie-dyeing master.'),
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
                    // Container(
                    //   width: 80,
                    //   padding: EdgeInsets.fromLTRB(24.0, 120.0, 0.0, 0.0),
                    //   // color: Colors.amber,
                    //   child: Image.asset('assets/images/logo.png'),
                    // ),
                    Container(
                      width: 80,
                      padding: EdgeInsets.fromLTRB(24.0, 200.0, 0.0, 0.0),
                    ),
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(24.0, 30.0, 0.0, 0.0),
                            child: Text(
                              'Welcome',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.6,
                                  fontFamily: 'CantataOne',
                                  color: Color(0xFF483C30)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(24.0, 74.0, 0.0, 0.0),
                            child: Text(
                              'Natural Lover,',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.6,
                                  fontFamily: 'CantataOne',
                                  color: Color(0xFF483C30)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(24.0, 140.0, 0.0, 0.0),
                            child: Text(
                              'Start the exploration journey\nof natural dyeing.',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.6,
                                  fontFamily: 'OpenSans',
                                  color: Color(0xFF483C30)),
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
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Email",
                              fillColor: Colors.amber,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (value) {
                              if (value.length == 0) {
                                return "Email cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                fontFamily: 'OpenSans',
                                color: Color(0xFF483C30)),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Enter Password",
                              fillColor: Colors.amber,
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: new BorderSide(),
                              ),
                            ),
                            validator: (value) {
                              if (value.length == 0) {
                                return "Password cannot be empty";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.6,
                                fontFamily: 'OpenSans',
                                color: Color(0xFF483C30)),
                          ),

                          // TextField(
                          //   decoration: InputDecoration(
                          //       labelText: 'Email',
                          //       labelStyle: TextStyle(
                          //           fontFamily: 'Open Sans',
                          //           fontSize: 16,
                          //           fontWeight: FontWeight.w400,
                          //           color: Color(0xFFC4C4C4)),
                          //       focusedBorder: UnderlineInputBorder(
                          //           borderSide:
                          //               BorderSide(color: Color(0xFF96A97C)))),
                          // ),
                          // SizedBox(height: 20.0),
                          // TextField(
                          //   decoration: InputDecoration(
                          //       labelText: 'Password',
                          //       labelStyle: TextStyle(
                          //           fontFamily: 'Open Sans',
                          //           fontSize: 16,
                          //           fontWeight: FontWeight.w400,
                          //           color: Color(0xFFC4C4C4)),
                          //       focusedBorder: UnderlineInputBorder(
                          //           borderSide:
                          //               BorderSide(color: Color(0xFF96A97C)))),
                          //   obscureText: true,
                          // ),
                          SizedBox(height: 5),
                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(
                                top: 15.0, left: 24.0, right: 0.0),
                            child: InkWell(
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.6,
                                    fontFamily: 'OpenSans',
                                    color: Color(0xFF483C30),
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
              color: Color(0XFFFDF9F3),
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
                      'Skip',
                      style: TextStyle(
                          color: Color(0xFF483C30),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 1.0),
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
                      'Next',
                      style: TextStyle(
                          color: Color(0xFF483C30),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.2,
                          letterSpacing: 1.0),
                    ),
                  )
                ],
              ),
            )
          : InkWell(
              onTap: () => {Navigator.pushNamed(context, '/location')},
              child: Container(
                height: Platform.isIOS ? 75 : 60,
                color: Color(0xFF866A50),
                alignment: Alignment.center,
                child: Text(
                  'GET STARTED NOW',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      height: 1.2,
                      letterSpacing: 1.0),
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
      color: Color(0xFFFDF9F3),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 150.0,
          ),
          Container(
            // color: Colors.amber,
            child: Lottie.asset(image, repeat: true, reverse: false),
          ),
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6,
                fontFamily: 'CantataOne',
                color: Color(0xFF483C30)),
          ),
          SizedBox(height: 10),
          Text(
            body,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.6,
                fontFamily: 'OpenSans',
                color: Color(0xFF483C30)),
          ),
        ],
      ),
    );
  }
}
