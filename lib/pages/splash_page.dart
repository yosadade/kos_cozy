import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/splash.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/logo.png'))),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Find cozy House \nto Stay and Happy',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                    'Stop membuat banyak waktu\npada tempat yang tidak habitable',
                    style: greyTextStyle.copyWith(fontSize: 16)),
                const SizedBox(height: 40),
                SizedBox(
                  width: 210,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(purpleColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17)))),
                      child: Text(
                        'Explore Now',
                        style: whiteTextStyle.copyWith(fontSize: 18),
                      )),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
