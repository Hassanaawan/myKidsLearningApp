import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids/responcive.dart';
import 'package:kids/utils/model.dart';

class FlowerSound extends StatefulWidget {
  int index;

  FlowerSound(this.index);
  @override
  State<FlowerSound> createState() => _FlowerSoundState();
}

List<Numbermodel> flowerlist = FLOWERS1();

class _FlowerSoundState extends State<FlowerSound> {
  final FlutterTts flutterTts = FlutterTts();
  @override
  Widget build(BuildContext context) {
    int i = 0;
    Future _speak() async {
      print(await flutterTts.getLanguages);
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1.0);
      await flutterTts.setVolume(10.0);
      print(await flutterTts.getVoices);
      int count = widget.index;

      await flutterTts.speak(flowerlist[count].Text);
    }

    final _controller = new PageController();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Flower',
            style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
          ),
          centerTitle: true,
          backgroundColor: AppColor.colorContain,
        ),
        body: Container(
          height: 650,
          width: 500,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //       fit: BoxFit.fitHeight,
          //       image: AssetImage("assets/images/Union 12.png")
          //   ),
          // ),
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
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: flowerlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Image.asset(
                            flowerlist[widget.index].image,
                            alignment: Alignment.topCenter,
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
                      height: 110,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Align(
                    heightFactor: 0.5,
                    child: Center(
                      child: ListTile(
                        trailing: InkWell(
                          onTap: () {
                            if (widget.index >= 0 && widget.index < 10) {
                              i++;
                              print(widget.index);
                              setState(() {
                                widget.index++;
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
                            if (widget.index > 0 && widget.index <= 10) {
                              i--;
                              setState(() {
                                widget.index--;
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
