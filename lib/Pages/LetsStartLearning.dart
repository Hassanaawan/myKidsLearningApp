import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/Learning/Alphabet.dart';
import 'package:kids/Learning/Animals.dart';
import 'package:kids/Learning/Brids.dart';
import 'package:kids/Learning/Colors.dart';
import 'package:kids/Learning/Flowers.dart';
import 'package:kids/Learning/Fruit.dart';
import 'package:kids/Learning/Month.dart';
import 'package:kids/Learning/Number.dart';
import 'package:kids/Learning/Shapes.dart';
import 'package:kids/Learning/Vegitable.dart';
import 'package:kids/responcive.dart';
import 'package:kids/utils/admob.dart';
import 'package:kids/Pages/LetsStartLearning.dart';
import 'package:kids/utils/sizeconfig.dart';

class LetsStartLearning extends StatefulWidget {
  int index;
  LetsStartLearning(this.index);

  @override
  State<LetsStartLearning> createState() => _LetsStartLearningState();
}

class _LetsStartLearningState extends State<LetsStartLearning> {
  @override
  Widget build(BuildContext context) {
    // ScreenSize = MediaQuery.of(context).size;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: AppColor.colorContain,
        elevation: 0,
        title: Text(
          "PreSchool Kids Learning",
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //  padding: EdgeInsets.only(bottom: 25, top: 10),
            children: [
              SvgPicture.asset(
                "assets/images/clouds.svg",
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alphabet()));
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
                              child: Text("Learn Alphabet",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 50,
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Numbers()));
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
                              child: Text("Learn Numbers",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 50,
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Color(widget.index)));
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
                            width: 380,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //  crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Learn Colors",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.green)),
                            ),
                            SizedBox(
                              width: 60,
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Shapes()));
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
                              child: Text("Learn Shapes",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 60,
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Animal()));
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
                              child: Text("Learn Animals",
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Brids()));
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
                              child: Text("Learn Birds",
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Flower()));
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
                              child: Text("Learn Flowers",
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Fruits()));
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
                              child: Text("Learn Fruits",
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Month()));
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
                              child: Text("Learn Months",
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
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Vegitable()));
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
                              child: Text("Learn Vegetables",
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
