import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids/responcive.dart';
import 'package:kids/utils/model.dart';

class AnimalSound extends StatefulWidget {
  int index1;

  AnimalSound(this.index1);
  @override
  State<AnimalSound> createState() => _AnimalSoundState();
}

List<Numbermodel> animallist = ANIMAL1();

class _AnimalSoundState extends State<AnimalSound> {
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
      int count = widget.index1;

      await flutterTts.speak(animallist[count].Text);
    }

    final _controller = new PageController();

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Animal',
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
                      itemCount: animallist.length,
                      itemBuilder: (BuildContext context, int index1) {
                        return Center(
                          child: Image.asset(
                            animallist[widget.index1].image,
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
                    heightFactor: 0.25,
                    child: Center(
                      child: ListTile(
                        trailing: InkWell(
                          onTap: () {
                            if (widget.index1 >= 0 && widget.index1 < 13) {
                              i++;
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
                            if (widget.index1 > 0 && widget.index1 <= 13) {
                              i--;
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
