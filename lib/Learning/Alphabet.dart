import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/Alphabetssound/Alphasound.dart';
import 'package:kids/utils/admob.dart';
import 'package:kids/utils/model.dart';

import '../responcive.dart';

class Alphabet extends StatefulWidget {
  @override
  State<Alphabet> createState() => _AlphabetState();
}

List<Numbermodel> kidslist = KidsList1();
List alphabets = [
  'Aa',
  'Bb',
  'Ca',
  'Dd',
  'Ee',
  'Ff',
  'Gg',
  'Hh',
  'Ii',
  'Jj',
  'Kk',
  'Ll',
  'Mm',
  'Nn',
  'Oo',
  'Pp',
  'Qq',
  'Rr',
  'Ss',
  'Tt',
  'Uv',
  'Vv',
  'Ww',
  'Xx',
  'Yy',
  'Zz'
];

class _AlphabetState extends State<Alphabet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: AppColor.colorContain,
        title: Text(
          'Alphabet',
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView.builder(
              itemCount: alphabets.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return InkWell(
                  splashColor: Colors.redAccent,
                  onTap: () {
                    print(kidslist);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AlphaSound(index),
                        ));
                  },
                  child: Card(
                      color: index == 0
                          ? Color(0xffFF6433)
                          : index == 1
                              ? Color(0xffCD5C5C)
                              : index == 2
                                  ? Color(0xffF08080)
                                  : index == 3
                                      ? Color(0xffFA8072)
                                      : index == 4
                                          ? Color(0xffE9967A)
                                          : index == 5
                                              ? Color(0xff9FE2BF)
                                              : index == 6
                                                  ? Color(0xff40E0D0)
                                                  : index == 7
                                                      ? Color(0xffFFBF00)
                                                      : index == 8
                                                          ? Color(0xff6495ED)
                                                          : index == 9
                                                              ? Color(
                                                                  0xffCCCCFF)
                                                              : index == 10
                                                                  ? Color(
                                                                      0xffDE3163)
                                                                  : index == 11
                                                                      ? Color(
                                                                          0xffFF7F50)
                                                                      : index ==
                                                                              12
                                                                          ? Color(
                                                                              0xff008000)
                                                                          : index == 13
                                                                              ? Color(0xff808000)
                                                                              : index == 14
                                                                                  ? Color(0xffFF0000)
                                                                                  : index == 15
                                                                                      ? Color(0xff808080)
                                                                                      : index == 16
                                                                                          ? Color(0xff800000)
                                                                                          : index == 17
                                                                                              ? Color(0xff00FFFF)
                                                                                              : index == 18
                                                                                                  ? Color(0xffFF00FF)
                                                                                                  : index == 19
                                                                                                      ? Color(0xff008080)
                                                                                                      : index == 20
                                                                                                          ? Color(0xff800080)
                                                                                                          : index == 21
                                                                                                              ? Color(0xff27AE60)
                                                                                                              : index == 22
                                                                                                                  ? Color(0xff27AEA4)
                                                                                                                  : index == 23
                                                                                                                      ? Color(0xff2775AE)
                                                                                                                      : index == 24
                                                                                                                          ? Color(0xff0D1F20)
                                                                                                                          : Colors.purple,
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                      shadowColor: Colors.grey,
                      child: Center(
                          child:
                              // Image.asset(
                              //   kidslist[index].image,
                              //   height: 120,
                              // ),
                              Text(
                        alphabets[index],
                        style: GoogleFonts.atma(
                            color: Colors.white,
                            fontSize: 135,
                            fontWeight: FontWeight.bold),
                      ))),
                );
              })),
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
