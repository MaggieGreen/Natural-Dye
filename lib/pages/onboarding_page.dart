import 'dart:io';

import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _totalPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
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
              Container(
                color: Color(0xFFDEDFD4),
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      // color: Colors.amber,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'In the Gallery',
                      style: TextStyle(
                          fontSize: 24,
                          height: 2.0,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.',
                      style: TextStyle(
                          fontSize: 16, height: 1.5, fontFamily: 'OpenSans'),
                    ),
                    SizedBox(height: 30),
                    Container(
                      // color: Colors.amber,
                      child: Image.asset('assets/images/onboarding1.png'),
                    ),
                  ],
                ),
              ),
              _buildPageContent(
                  image: 'assets/images/onboarding1.png',
                  title: 'In the Library',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.'),
              _buildPageContent(
                  image: 'assets/images/onboarding1.png',
                  title: 'In the Interactive Animation',
                  body:
                      'Donec facilisis tortor ut augue lacinia, at viverra est semper. Sed sapien metus, scelerisque nec pharetra id, tempor a tortor. Pellentesque non dignissim neque.')
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage != 2
          ? Container(
              // color: Colors.amber,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                          color: Color(0xFF777E65),
                          fontWeight: FontWeight.w600),
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
                          color: Color(0xFF777E65),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          : InkWell(
              onTap: () => {Navigator.pushNamed(context, '/location')},
              child: Container(
                height: Platform.isIOS ? 70 : 60,
                color: Color(0xFF777E65),
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
      color: Color(0xFFDEDFD4),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // color: Colors.amber,
            child: Image.asset('assets/images/logo.png'),
          ),
          SizedBox(height: 40),
          Text(
            title,
            style: TextStyle(
                fontSize: 24, height: 2.0, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(
            body,
            style: TextStyle(fontSize: 16, height: 1.5, fontFamily: 'OpenSans'),
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
