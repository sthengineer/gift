import 'package:flutter/material.dart';
import 'package:gift/core/constants/palette.dart';
import 'package:gift/core/constants/responsive.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      const Duration(seconds: 100),
    ).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        // TODO: add SignUp Page
        return const Center();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: responsive.zeroMargin,
              top: responsive.zeroMargin,
              right: responsive.zeroMargin,
            ),
            width: responsive.screenWidth,
            height: responsive.screenHeight * (2 / 3),
            constraints: const BoxConstraints(
              maxHeight: 402,
            ),
            child: Image.asset(
              'assets/images/entrance/screenshot.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 58),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/entrance/candle.png',
                      width: 18,
                      height: 22,
                    ),
                    const SizedBox(width: 33),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  /*child: Image.asset(
                    'assets/img/entrance/gift.png',
                  ),*/
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        height: 1.1,
                      ),
                      children: [
                        TextSpan(
                          text: 'G',
                          style: TextStyle(
                            fontFamily: 'SigmarOne',
                            fontSize: 59,
                            fontWeight: FontWeight.w400,
                            color: Palette.giftLetterColors[0],
                          ),
                        ),
                        TextSpan(
                          text: 'I',
                          style: TextStyle(
                            fontFamily: 'SigmarOne',
                            fontSize: 59,
                            fontWeight: FontWeight.w400,
                            color: Palette.giftLetterColors[1],
                          ),
                        ),
                        TextSpan(
                          text: 'F',
                          style: TextStyle(
                            fontFamily: 'SigmarOne',
                            fontSize: 59,
                            fontWeight: FontWeight.w400,
                            color: Palette.giftLetterColors[2],
                          ),
                        ),
                        TextSpan(
                          text: 'T',
                          style: TextStyle(
                            fontFamily: 'SigmarOne',
                            fontSize: 59,
                            fontWeight: FontWeight.w400,
                            color: Palette.giftLetterColors[3],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
