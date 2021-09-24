import 'package:flutter/material.dart';
import 'package:portfolio/models/responsive.dart';
import 'package:portfolio/shared/theme.dart';

class AboutMePage extends StatefulWidget {
  final screenSize;
  AboutMePage({Key? key, this.screenSize}) : super(key: key);

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  List boutme = [
    {'title': 'Profile', 'subtitle': 'UI / UX Engineer, Flutter Developer'},
    {'title': 'Name', 'subtitle': 'Muhammad Yafi Azka'},
    {'title': 'Birthday', 'subtitle': '19/12/2003'},
    {'title': 'Education', 'subtitle': 'SMK 5 Telkom Banda Aceh (2019-2021)'},
    {'title': 'Language', 'subtitle': 'Indonesian, English'},
  ];

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'About Me',
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18,
          ),
        ),
      );
    }

    Widget image() {
      return Container(
        width: ResponsiveWidget.isLargeScreen(context)
            ? widget.screenSize.width / 9.5
            : 146,
        height: ResponsiveWidget.isLargeScreen(context)
            ? widget.screenSize.height / 3.2
            : 192,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'me.jpg',
            ),
          ),
        ),
      );
    }

    Widget profile() {
      me(String title, String subtitle) {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '$title :',
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  subtitle,
                  style: blackTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        width: widget.screenSize.width / 2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: boutme
              .map(
                (e) => me(
                  e['title'],
                  e['subtitle'],
                ),
              )
              .toList(),
        ),
      );
    }

    Widget content() {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          SizedBox(width: widget.screenSize.width / 10),
          profile(),
        ],
      );
    }

    return Container(
      width: double.infinity,
      // height: screenSize.height * 0.57,
      margin: EdgeInsets.only(
        left: widget.screenSize.width / 10,
        right: widget.screenSize.width / 10,
        top: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: widget.screenSize.width / 12.5,
        vertical: widget.screenSize.height / 12.5,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(),
          content(),
        ],
      ),
    );
  }
}
