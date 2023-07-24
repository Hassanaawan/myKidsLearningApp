import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/utils/admob.dart';
import 'package:kids/utils/model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../responcive.dart';

class AnimalVideo extends StatefulWidget {
  @override
  State<AnimalVideo> createState() => _AnimalVideoState();
}

List<Numbermodel> animalvideolist = animalvideo1();
List<String> animalvideoURLlist = animalvideoURL();

class _AnimalVideoState extends State<AnimalVideo> {
  Future<void> _launchYoutubeVideo(String url) async {
    await launch(url);
  }

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
          'Animal Video Songs',
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: animalvideolist.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return InkWell(
            splashColor: Colors.grey,
            onTap: () {
              _launchYoutubeVideo(animalvideoURLlist[index]);
              print(animalvideoURLlist[index]);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 250,
              child: Card(
                color: AppColor.colorContain,
                elevation: 5,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                shadowColor: Colors.grey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(animalvideolist[index].image,
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                          height: 180),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          animalvideolist[index].Text,
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: "arlrdbd",
                              fontSize: 15),
                        )),
                      )
                    ]),
              ),
            ),
          );
        },
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
