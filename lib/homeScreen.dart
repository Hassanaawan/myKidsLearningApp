import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kids/Pages/LetsStartLearning.dart';
import 'package:kids/responcive.dart';
import 'package:kids/utils/admob.dart';
import 'package:kids/utils/sizeconfig.dart';
import 'Pages/LookAndChooes.dart';
import 'Pages/VideoLearning.dart';
import 'Pages/listen_and_guess.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String url = "https://play.google.com/store/apps/details?id=" + "com.codecue";
  int index;
  AdmobHelper admobHelper = new AdmobHelper();
  @override
  void initState() {
    super.initState();
    admobHelper.createInterad();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/clouds.svg",
                  ),
                  InkWell(
                    onTap: () {
                      admobHelper.showInterad();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LetsStartLearning(index)));
                    },
                    child: Container(
                        // height: size.height * 0.3 - 27,
                        decoration: BoxDecoration(
                            color: Color(0xFFE4F2E5),
                            borderRadius: BorderRadius.circular(24)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, right: 20),
                              child: SvgPicture.asset(
                                "assets/images/ABC Block.svg",
                                height: 140,
                                //  width: 217,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text("Start Learning",
                                      style: GoogleFonts.atma(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff54B88B))),
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                SvgPicture.asset(
                                  'assets/images/greenArrow.svg',
                                  height: 70,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      admobHelper.showInterad();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoLearning()));
                    },
                    child: Container(
                        //   height: size.height * 0.3 - 27,
                        decoration: BoxDecoration(
                            color: Color(0xFFEBB49C),
                            borderRadius: BorderRadius.circular(24)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 10),
                              child: Image.asset(
                                "assets/images/videoLEanung.png",
                                height: 140,
                                //width: 160,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20),
                                  child: Text("Video Learning",
                                      style: GoogleFonts.atma(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffF97D46))),
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                SvgPicture.asset(
                                  'assets/images/orangeArrow.svg',
                                  height: 70,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      admobHelper.showInterad();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LookAndChooes(index)));
                    },
                    child: Container(
                        //   height: size.height * 0.3 - 27,
                        decoration: BoxDecoration(
                            color: Color(0xFFE9EB9C),
                            borderRadius: BorderRadius.circular(24)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20, top: 10),
                              child: SvgPicture.asset(
                                "assets/images/lookAndChoose.svg",
                                // height: 150,
                                // width: 160,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20),
                                  child: Text("Look and Choose",
                                      style: GoogleFonts.atma(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffA2A536))),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                SvgPicture.asset(
                                  'assets/images/mehndiArrow.svg',
                                  height: 70,
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      admobHelper.showInterad();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListenGuess()));
                    },
                    child: Container(
                        //   height: size.height * 0.3 - 27,
                        decoration: BoxDecoration(
                            color: Color(0xFFEB9CCC),
                            borderRadius: BorderRadius.circular(24)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 20, top: 10),
                                child: SvgPicture.asset(
                                  "assets/images/new.svg",
                                  height: 140,
                                  //  width: 140,
                                  fit: BoxFit.cover,
                                  // width: 200,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20),
                                    child: Text("Listen and Guess",
                                        style: GoogleFonts.atma(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xffE13CA0))),
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/PurpleArrow.svg',
                                  height: 70,
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     admobHelper.showInterad();
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (context) => ListenGuess()));
                  //   },
                  //   child: Container(
                  //       //   height: size.height * .3,
                  //       decoration: BoxDecoration(
                  //           color: Color(0xFFEB9CCC),
                  //           borderRadius: BorderRadius.circular(24)),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           // Padding(
                  //           //     padding: const EdgeInsets.only(
                  //           //         left: 20.0, right: 20, top: 3),
                  //           //     child: SvgPicture.asset(
                  //           //       "assets/images/listenNdGuessNEW.svg",
                  //           //       height: 160,
                  //           //       // width: 200,
                  //           //     )),

                  //           Padding(
                  //             padding: const EdgeInsets.only(
                  //                 left: 20.0, right: 20, top: 10),
                  //             child: SvgPicture.asset(
                  //               "assets/images/lookAndChoose.svg",
                  //               // height: 150,
                  //               // width: 160,
                  //             ),
                  //           ),
                  //           Row(
                  //             children: [
                  //               Padding(
                  //                 padding: const EdgeInsets.only(
                  //                     left: 20.0, right: 20),
                  //                 child: Text("Listen and Guess",
                  //                     style: GoogleFonts.atma(
                  //                         fontSize: 30,
                  //                         fontWeight: FontWeight.w700,
                  //                         color: Color(0xffE13CA0))),
                  //               ),
                  //               SizedBox(
                  //                 width: 40,
                  //               ),
                  //               SvgPicture.asset(
                  //                 'assets/images/PurpleArrow.svg',
                  //                 height: 70,
                  //               ),
                  //             ],
                  //           ),
                  //         ],
                  //       )),
                  // ),
                ],
              )),
        ));
  }
}
