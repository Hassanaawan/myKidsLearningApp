import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids/responcive.dart';
import 'package:kids/utils/model.dart';

class NumberSound extends StatefulWidget {
  int index1;
  NumberSound(this.index1);
  @override
  State<NumberSound> createState() => _NumberSoundState();
}

class _NumberSoundState extends State<NumberSound> {
  final FlutterTts flutterTts = FlutterTts();
  List<Numbermodel> list = NumberList();
  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1.0);
      await flutterTts.setVolume(100.0);
      print(await flutterTts.getVoices);
      int count = widget.index1;
      await flutterTts.speak(list[count].Text);
    }

    final _controller = new PageController();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Number',
            style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
          ),
          centerTitle: true,
          backgroundColor: AppColor.colorContain,
        ),
        body: Container(
          height: 650,
          width: 500,
          decoration: BoxDecoration(
              // image: DecorationImage(
              //     fit: BoxFit.fitHeight,
              //     image: AssetImage("assets/images/Union 12.png")
              // ),
              ),
          child: Center(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    //  physics: NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index1) {
                      return Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              list[widget.index1].image,
                              fit: BoxFit.fill,
                              height: MediaQuery.of(context).size.width * 0.3,
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                            Image.asset(
                              list[widget.index1].image2,
                              fit: BoxFit.fill,
                              height: MediaQuery.of(context).size.width * 0.3,
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                          ]);
                    },
                  ),
                )),
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
                    heightFactor: 0,
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
        ));
  }
}
