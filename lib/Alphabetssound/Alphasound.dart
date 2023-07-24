import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/responcive.dart';
import 'package:kids/utils/admob.dart';
import 'package:kids/utils/model.dart';

class AlphaSound extends StatefulWidget {
  int index1;

  AlphaSound(this.index1);
  @override
  State<AlphaSound> createState() => _AlphaSoundState();
}

List<Numbermodel> kidslist = KidsList1();

class _AlphaSoundState extends State<AlphaSound> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(10.0);
      await flutterTts.setVolume(10.0);
      print(await flutterTts.getVoices);
      int count = widget.index1;

      await flutterTts.speak(kidslist[count].Text);
    }

    final _controller = new PageController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: AppColor.colorContain,
        elevation: 0,
        title: Text(
          'Alphabet',
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 600,
            width: MediaQuery.of(context).size.height * 1000,
            decoration: BoxDecoration(
                // image: DecorationImage(
                //     fit: BoxFit.fitHeight,
                //     image: AssetImage("assets/images/Union 12.png")),
                ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    Flexible(
                      child: Card(
                        color: AppColor.soundCard,
                        margin: EdgeInsets.all(20),
                        elevation: 5,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: PageView.builder(
                          controller: _controller,
                          //    physics: NeverScrollableScrollPhysics(),
                          itemCount: kidslist.length,
                          itemBuilder: (BuildContext context, int index1) {
                            return Center(
                              child: Text(
                                kidslist[widget.index1].Text,
                                style: GoogleFonts.atma(
                                    color: AppColor.monthsContain,
                                    fontSize: 150,
                                    fontWeight: FontWeight.w700),
                                // alignment: Alignment.topCenter,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () => _speak(),
                        child: Image.asset(
                          'assets/images/soundframe.png',
                          alignment: Alignment.topCenter,
                          height: 120,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Align(
                        heightFactor: 1,
                        child: Center(
                          child: ListTile(
                            trailing: InkWell(
                              onTap: () {
                                if (widget.index1 >= 0 && widget.index1 < 25) {
                                  print(widget.index1);
                                  setState(() {
                                    widget.index1++;
                                  });
                                }
                                _speak();
                              },
                              child: Image.asset(
                                'assets/images/next.png',
                                height: 120,
                              ),
                            ),
                            leading: InkWell(
                              onTap: () {
                                if (widget.index1 > 0 && widget.index1 <= 25) {
                                  setState(() {
                                    widget.index1--;
                                  });
                                }
                                _speak();
                              },
                              child: Image.asset(
                                'assets/images/Frame 111.png',
                                height: 120,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ])),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.13,
          width: 25,
          child: AdWidget(
            ad: AdmobHelper.getBannerAd()..load(),
          ),
        ),
      ),
    );
  }
}
