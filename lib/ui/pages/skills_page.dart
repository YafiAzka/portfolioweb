import 'package:flutter/material.dart';
import 'package:portfolio/models/responsive.dart';
import 'package:portfolio/shared/theme.dart';

class SkillsPage extends StatelessWidget {
  final screenSize;
  const SkillsPage({Key? key, this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Text(
          'Skills',
          style: blackTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 18,
          ),
        ),
      );
    }

    Widget profile() {
      return Container(
        width: ResponsiveWidget.isLargeScreen(context)
            ? screenSize.width / 9.5
            : 146,
        height: ResponsiveWidget.isLargeScreen(context)
            ? screenSize.height / 3.2
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

    Widget indicator(double value) {
      return Container(
        height: 20,
        width: screenSize.width / 4.7,
        child: LinearProgressIndicator(
          backgroundColor: secondaryColor,
          value: value,
          color: primaryColor,
        ),
      );
    }

    Widget content() {
      return ResponsiveWidget.isLargeScreen(context)
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profile(),
                SizedBox(width: screenSize.width / 10),
                Container(
                  width: screenSize.width / 2.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Profile',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          SizedBox(width: screenSize.width / 6.4),
                          Expanded(
                            child: Text(
                              'UI / UX Engineer, Flutter Developer',
                              style: blackTextStyle.copyWith(
                                fontWeight: bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ui Design',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.6),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ux Research',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.55),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flutter Front-End',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.75),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flutter Back-End',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.45),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Center(
                  child: profile(),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Profile',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'UI / UX Engineer, Flutter Developer',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ui Design',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.6),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ux Research',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.55),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flutter Front-End',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.75),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Flutter Back-End',
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          indicator(0.45),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
    }

    return Container(
      width: double.infinity,
      // height: screenSize.height * 0.57,
      margin: EdgeInsets.symmetric(
        horizontal: screenSize.width / 10,
        // vertical: defaultMargin,
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
