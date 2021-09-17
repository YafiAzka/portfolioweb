import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
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

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: screenSize.width / 15,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  lorem(
                    paragraphs: 2,
                    words: 200,
                  ),
                  style: blackTextStyle.copyWith(
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.visible,
                ),
              ),
              Container(
                width: screenSize.width / 12,
                height: screenSize.height / 4,
                margin: EdgeInsets.only(left: defaultMargin),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'me.jpg',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
