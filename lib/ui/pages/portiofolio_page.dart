import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/responsive.dart';
import 'package:portfolio/shared/theme.dart';

class PortofolioPage extends StatefulWidget {
  @override
  _PortofolioPageState createState() => _PortofolioPageState();
}

class _PortofolioPageState extends State<PortofolioPage> {
  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/images/laravel_flutter.jpg',
    'assets/images/flutter_airplane.jpg',
    'assets/images/mastering_flutter.jpg',
  ];

  final List<String> name = [
    'E-COMMERCE',
    'AIRPLANE',
    '7DAYS CODE',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultMargin),
      child: Stack(
        children: [
          CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              scrollPhysics: ResponsiveWidget.isSmallScreen(context)
                  ? PageScrollPhysics()
                  : NeverScrollableScrollPhysics(),
              enlargeCenterPage: true,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(
                  () {
                    _current = index;
                    for (int i = 0; i < imageSliders.length; i++) {
                      if (i == index) {
                        _isSelected[i] = true;
                      } else {
                        _isSelected[i] = false;
                      }
                    }
                  },
                );
              },
            ),
            carouselController: _controller,
          ),
          // AspectRatio(
          //   aspectRatio: 18 / 8,
          //   child: Center(
          //     child: Text(
          //       name[_current],
          //       style: TextStyle(
          //         letterSpacing: 8,
          //         fontFamily: 'Electrolize',
          //         fontSize: screenSize.width / 25,
          //         color: blackColor.withOpacity(0.3),
          //       ),
          //     ),
          //   ),
          // ),
          ResponsiveWidget.isSmallScreen(context)
              ? Container()
              : Container(
                  margin: EdgeInsets.only(top: screenSize.height / 4.1),
                  child: AspectRatio(
                    aspectRatio: 17 / 8,
                    child: Center(
                      heightFactor: 1,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: screenSize.width / 8,
                            right: screenSize.width / 8,
                          ),
                          child: Card(
                            elevation: 5,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 50,
                                bottom: screenSize.height / 50,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int i = 0; i < name.length; i++)
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          onHover: (value) {
                                            setState(() {
                                              value
                                                  ? _isHovering[i] = true
                                                  : _isHovering[i] = false;
                                            });
                                          },
                                          onTap: () {
                                            _controller.animateToPage(i);
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: screenSize.height / 80,
                                                bottom: screenSize.height / 90),
                                            child: Text(
                                              name[i],
                                              style: _isHovering[i]
                                                  ? pinkTextStyle
                                                  : blueTextStyle,
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          maintainSize: true,
                                          maintainAnimation: true,
                                          maintainState: true,
                                          visible: _isSelected[i],
                                          child: AnimatedOpacity(
                                            duration:
                                                Duration(milliseconds: 400),
                                            opacity: _isSelected[i] ? 1 : 0,
                                            child: Container(
                                              height: 5,
                                              decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              width: screenSize.width / 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
