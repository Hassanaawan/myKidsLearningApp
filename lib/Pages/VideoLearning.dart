import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/VideoLearning/ABC%20song.dart';
import 'package:kids/VideoLearning/AnimalVideo.dart';
import 'package:kids/VideoLearning/BirdVideo.dart';
import 'package:kids/VideoLearning/FlowerVideo.dart';
import 'package:kids/VideoLearning/FruitVideo.dart';
import 'package:kids/VideoLearning/MonthVideo.dart';
import 'package:kids/VideoLearning/Number%20video.dart';
import 'package:kids/VideoLearning/ShapeVideo.dart';
import 'package:kids/VideoLearning/VegitableVideo.dart';
import 'package:kids/VideoLearning/colorvideo.dart';
import 'package:kids/utils/admob.dart';

import '../responcive.dart';

class VideoLearning extends StatefulWidget {
  @override
  State<VideoLearning> createState() => _VideoLearningState();
}

class _VideoLearningState extends State<VideoLearning> {
  AdmobHelper admobHelper = new AdmobHelper();

  void initState() {
    super.initState();
    admobHelper.createInterad();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: AppColor.colorContain,
        title: Text(
          'Video Learning',
          style: TextStyle(color: Color(0xFF000000), fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(padding: EdgeInsets.all(35), children: [
              InkWell(
                splashColor: Colors.orange[100],
                onTap: () {
                  // admobHelper.showInterad();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ABCVideo()));
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
                              child: Text("ABC Video",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 70,
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
                  admobHelper.showInterad();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NumberVideo()));
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
                              child: Text("Number Video",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 20,
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
                      MaterialPageRoute(builder: (context) => ColorVideo()));
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
                              child: Text("Color Video",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.green)),
                            ),
                            SizedBox(
                              width: 50,
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
                  admobHelper.showInterad();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShapeVideo()));
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
                              child: Text("Shapes Video",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 40,
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
                  admobHelper.showInterad();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AnimalVideo()));
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
                              child: Text("Animals Video",
                                  style: GoogleFonts.atma(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 25,
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
                      MaterialPageRoute(builder: (context) => BirdVideo()));
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
                              child: Text("Bird Video",
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
                      MaterialPageRoute(builder: (context) => FlowerVideo()));
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
                              child: Text("Flower Video",
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
                  admobHelper.showInterad();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FruitVideo()));
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
                              child: Text("Fruit Video",
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
                      MaterialPageRoute(builder: (context) => MonthVideo()));
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
                              child: Text("Month Video",
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
                  // admobHelper.showInterad();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VegitableVideo()));
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
                              child: Text("Vegetable Video",
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
        ],
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
