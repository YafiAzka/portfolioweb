import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme.dart';
import 'package:portfolio/ui/pages/about_page.dart';
import 'package:portfolio/ui/pages/header_page.dart';

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
      appBar: PreferredSize(
        child: appBar(),
        preferredSize: Size(screenSize.width, 1000),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPage(),
            AboutPage(),
          ],
        ),
      ),
    );
  }
}
