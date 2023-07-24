import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/ListenGuessSongs/Alphabet.dart';
import 'package:kids/ListenGuessSongs/Animal.dart';
import 'package:kids/ListenGuessSongs/Brid.dart';
import 'package:kids/ListenGuessSongs/Color.dart';
import 'package:kids/ListenGuessSongs/Flower.dart';
import 'package:kids/ListenGuessSongs/Fruit.dart';
import 'package:kids/ListenGuessSongs/Month.dart';
import 'package:kids/ListenGuessSongs/Number.dart';
import 'package:kids/ListenGuessSongs/Shapes.dart';
import 'package:kids/ListenGuessSongs/Vegitable.dart';
import 'package:kids/utils/admob.dart';

import '../responcive.dart';

class ListenGuess extends StatefulWidget {
  @override
  State<ListenGuess> createState() => _ListenGuessState();
}

class _ListenGuessState extends State<ListenGuess> {
  int index;

  @override
  Widget build(BuildContext context) {
    final FlutterTts flutterTts = FlutterTts();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: AppColor.colorContain,
        elevation: 0,
        title: Text(
          'Listen And Guess',
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('Apple');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlphabetSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: SvgPicture.asset(
                            "assets/images/ABC Blocknew.svg",
                            height: 120,
                            //  width: 217,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Alphabet",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Image.asset(
                              'assets/images/right arrow button - Blue.png',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('Zero');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NumberSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: SvgPicture.asset(
                            "assets/images/123block.svg",
                            height: 120,
                            //  width: 217,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Number",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Image.asset(
                              'assets/images/Bluearrow.png',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('AQUA');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ColorSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.colorContain,
                        borderRadius: BorderRadius.circular(24)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: SvgPicture.asset(
                            "assets/images/Group.svg",
                            //  height: 120,
                            width: 400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Color",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.green)),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            SvgPicture.asset(
                              'assets/images/colorarrrow.svg',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('ARROW');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShapesSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.shapeContain,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: SvgPicture.asset(
                            "assets/images/shapeFrame.svg",
                            height: 120,
                            // width: 360,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Shapes",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Image.asset(
                              'assets/images/shapearrow.png',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('BEER');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnimalsSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.animalContain,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: SvgPicture.asset(
                            "assets/images/aniframe.svg",
                            height: 120,
                            // width: 360,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Animals",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            SvgPicture.asset(
                              'assets/images/animalarrow.svg',
                              height: 70,
                            )

                            //  Image.asset('assets/images/animalarrow.png')
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('ARARAT');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BirdsSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.birdContain,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: SvgPicture.asset(
                            "assets/images/animalframe.svg",
                            height: 120,
                            // width: 360,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Bird",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            SvgPicture.asset(
                              'assets/images/birdarrow.svg',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('BLACK ROSE');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FlowerSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.flowerContain,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: Image.asset(
                            "assets/images/flower.png",
                            height: 120,
                            // width: 360,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Flower",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            SvgPicture.asset(
                              'assets/images/flowerarrow.svg',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('APPLE');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FruitSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.fruitContain,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: SvgPicture.asset(
                            "assets/images/fruitframe.svg",
                            height: 120,
                            // width: 360,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Fruit",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            SvgPicture.asset(
                              'assets/images/fruitarrow.svg',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('JANUARY');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MonthSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.monthsContain,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: SvgPicture.asset(
                            "assets/images/monthframe.svg",
                            // height: 120,
                            // width: 360,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Month",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            SvgPicture.asset(
                              'assets/images/montharrow.svg',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  flutterTts.speak('BELL PEPPER');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VegitableSong()));
                },
                child: Container(
                    // height: size.height * 0.3 - 27,
                    decoration: BoxDecoration(
                        color: AppColor.vegetableContain,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 10),
                          child: Image.asset(
                            "assets/images/vegetableframe.png",
                            height: 120,
                            // width: 360,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Vegetable",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            SvgPicture.asset(
                              'assets/images/vegetablearrrow.svg',
                              height: 70,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.width * 0.13,
        width: 25,
        child: AdWidget(
          ad: AdmobHelper.getBannerAd()..load(),
        ),
      ),
    );
  }
}
