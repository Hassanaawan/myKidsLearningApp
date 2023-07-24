import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/Quiz/ABCQuize.dart';
import 'package:kids/Quiz/AnimalQuize.dart';
import 'package:kids/Quiz/BirdQuize.dart';
import 'package:kids/Quiz/ColorQuiz.dart';
import 'package:kids/Quiz/FlowerQuize.dart';
import 'package:kids/Quiz/FruitQuize.dart';
import 'package:kids/Quiz/MonthQuize.dart';
import 'package:kids/Quiz/NumberQuiz.dart';
import 'package:kids/Quiz/ShapeQuiz.dart';
import 'package:kids/Quiz/VegitableQuiz.dart';
import 'package:kids/utils/admob.dart';

import '../responcive.dart';

class LookAndChooes extends StatelessWidget {
  int index;
  LookAndChooes(this.index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: AppColor.colorContain,
        elevation: 0,
        title: Text(
          'Look And Choose',
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            InkWell(
              splashColor: Colors.redAccent,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ABCQuiz()));
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
                            child: Text("ABC Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 130,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Numberquiz()));
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
                            child: Text("Number Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 70,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Colorquiz()));
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
                            child: Text("Color Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.green)),
                          ),
                          SizedBox(
                            width: 90,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Shapequiz()));
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
                            child: Text("Shapes Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 80,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnimalQuiz()));
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
                            child: Text("Animals Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 60,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Birdquiz()));
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
                            child: Text("Bird Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 95,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Flowerquiz()));
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
                            child: Text("Flower Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 60,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Fruitquiz()));
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
                            child: Text("Fruit Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 90,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Monthquiz()));
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
                            child: Text("Month Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 70,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vegitablequiz()));
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
                            child: Text("Vegetable Quiz",
                                style: GoogleFonts.atma(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset(
                            'assets/images/vegetablearrrow.svg',
                            height: 70,
                          )
                        ],
                      ),
                    ],
                  )),
            )
          ]),
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
