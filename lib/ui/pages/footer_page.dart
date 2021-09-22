import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class FooterPage extends StatefulWidget {
  final screenSize;
  FooterPage({Key? key, this.screenSize}) : super(key: key);

  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  String youtube = 'https://www.instagram.com/yafiazka_/r';

  List _isHovering = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'Get in touch',
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 18,
          ),
        ),
      );
    }

    Widget url() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () => html.window.open(youtube, 'new tab'),
              onHover: (value) {
                setState(() {
                  _isHovering[0] = value;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Instagram',
                    style: whiteTextStyle.copyWith(
                      color: _isHovering[0] ? Colors.blue.shade200 : whiteColor,
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Visibility(
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    visible: _isHovering[0],
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: widget.screenSize.height * 0.5,
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(
        horizontal: widget.screenSize.width / 12.5,
        vertical: widget.screenSize.height / 12.5,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title(),
          url(),
        ],
      ),
    );
  }
}
