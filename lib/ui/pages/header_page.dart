import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    image() {
      return Container(
        width: double.infinity,
        height: 500,
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
                fontSize: 60,
                fontWeight: extra,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Welcome to my portfolio website',
              style: whiteTextStyle.copyWith(
                fontSize: 40,
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
