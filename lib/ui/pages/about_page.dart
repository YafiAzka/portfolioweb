import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme.dart';

class AboutPage extends StatelessWidget {
  final screenSize;
  const AboutPage({Key? key, this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'About me',
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        child: Column(
          children: [
            Text(
              'Hello, Am Yafi Azka',
              style: blackTextStyle.copyWith(
                fontWeight: light,
              ),
              maxLines: 10,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: screenSize.height * 0.5,
      margin: EdgeInsets.symmetric(
        horizontal: screenSize.width / 10,
        vertical: defaultMargin,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width / 12.5,
        vertical: screenSize.height / 12.5,
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
