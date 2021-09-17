import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme.dart';

class HeaderPage extends StatelessWidget {
  final screenSize;
  const HeaderPage({Key? key, this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    image() {
      return Container(
        width: screenSize.width,
        height: screenSize.height * 0.8,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('header.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    text() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "It's me, Azka",
              style: whiteTextStyle.copyWith(
                fontSize: screenSize.width / 20,
                fontWeight: extra,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Welcome to my portfolio website',
              style: whiteTextStyle.copyWith(
                fontSize: screenSize.width / 40,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          image(),
          text(),
        ],
      ),
    );
  }
}
