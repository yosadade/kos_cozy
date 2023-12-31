import 'package:cozy/models/city.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // POPULAR CITIES
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CityCard(City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: false)),
                    CityCard(City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city4.png',
                        isPopular: true)),
                    CityCard(City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                        isPopular: false)),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Recomended Space
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text('Recommended Space', style: regularTextStyle.copyWith(fontSize: 16),),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  SpaceCard(),
                  SpaceCard(),
                  SpaceCard()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
