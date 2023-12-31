import "package:cozy/theme.dart";
import "package:flutter/material.dart";

class TipsGuidanceCard extends StatelessWidget {
  const TipsGuidanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, right: 30, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset('assets/tips1.png', width: 80, height: 80),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City Guidelines',
                    style: blackTextStyle.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Updated 20 Apr',
                    style: greyTextStyle.copyWith(fontSize: 14),
                  )
                ],
              )
            ],
          ),
          Text(
            '>',
            style: greyTextStyle.copyWith(fontSize: 36),
          ),
        ],
      ),
    );
  }
}
