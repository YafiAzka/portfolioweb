import 'package:flutter/material.dart';
import 'package:portfolio/models/responsive.dart';
import 'package:portfolio/shared/theme.dart';
import 'package:portfolio/ui/pages/about_page.dart';
import 'package:portfolio/ui/pages/footer_page.dart';
import 'package:portfolio/ui/pages/portiofolio_page.dart';
import 'package:portfolio/ui/pages/header_page.dart';
import 'package:portfolio/ui/pages/skills_page.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late ScrollController _scrollController;
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    Widget appBar(double opacity) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 15,
        ),
        color: appBarColor.withOpacity(_opacity),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Portfolio',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: bold,
              ),
            ),
            Spacer(),
            Text(
              'About',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semi,
              ),
            ),
            SizedBox(width: 35),
            Text(
              'Skils',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semi,
              ),
            ),
            SizedBox(width: 35),
            Text(
              'Portfolio',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semi,
              ),
            ),
            SizedBox(width: 35),
            Text(
              'Contact',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semi,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: bgColor,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: Color(0xff95a5a6).withOpacity(_opacity),
              title: Text(
                'Portfolio',
                style: blackTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
            )
          : PreferredSize(
              child: appBar(_opacity),
              preferredSize: Size(screenSize.width, 1000),
            ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            HeaderPage(screenSize: screenSize),
            AboutPage(screenSize: screenSize),
            SkillsPage(screenSize: screenSize),
            PortofolioPage(),
            FooterPage(screenSize: screenSize),
          ],
        ),
      ),
    );
  }
}
