import 'package:flutter/material.dart';
import 'package:portfolio/models/responsive.dart';
import 'package:portfolio/shared/theme.dart';
import 'package:portfolio/ui/pages/about_page.dart';
import 'package:portfolio/ui/pages/portiofolio_page.dart';
import 'package:portfolio/ui/pages/header_page.dart';
import 'package:portfolio/ui/pages/skills_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    Widget appBar() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
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
              backgroundColor: transparentColor,
              title: Text(
                'Portfolio',
                style: blackTextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: bold,
                ),
              ),
            )
          : PreferredSize(
              child: appBar(),
              preferredSize: Size(screenSize.width, 1000),
            ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(screenSize: screenSize),
            AboutPage(screenSize: screenSize),
            SkillsPage(screenSize: screenSize),
            PortofolioPage(),
          ],
        ),
      ),
    );
  }
}
