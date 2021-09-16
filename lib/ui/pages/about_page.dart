import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:portfolio/shared/theme.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
      padding: EdgeInsets.all(80),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About me',
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 30),
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
                ),
              ),
              Container(
                width: 146,
                height: 195,
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
