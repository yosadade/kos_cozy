import 'package:cozy/models/space.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 30),
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
                  space.imageUrl,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius:
                            const BorderRadius.only(bottomLeft: Radius.circular(36))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '${space.rate}/5',
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
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.name,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                  text: '\$${space.price}',
                  style: purpleTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: ' / month',
                        style: greyTextStyle.copyWith(fontSize: 16)),
                  ]),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              space.location,
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        )
      ],
    ));
  }
}
