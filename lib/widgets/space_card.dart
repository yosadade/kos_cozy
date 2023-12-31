import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 30),
        child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(
                  'assets/space1.png',
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(36))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(width: 2),
                        Text(
                          '4/5',
                          style: whiteTextStyle.copyWith(fontSize: 13),
                        )
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kuretakeso Hott',
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                  text: '\$52',
                  style: purpleTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: ' / month',
                        style: greyTextStyle.copyWith(fontSize: 16)),
                  ]),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Bandung, Germany',
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        )
      ],
    ));
  }
}
