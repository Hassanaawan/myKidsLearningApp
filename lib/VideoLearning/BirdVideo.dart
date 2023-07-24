import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kids/utils/admob.dart';
import 'package:kids/utils/model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../responcive.dart';

class BirdVideo extends StatefulWidget {
  @override
  State<BirdVideo> createState() => _BirdVideoState();
}

List<Numbermodel> bridvideolist = bridvideo1();
List<String> bridvideoURLlist = bridvideoURL();

class _BirdVideoState extends State<BirdVideo> {
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
          'Birds Video Songs',
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: bridvideolist.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return InkWell(
            splashColor: Colors.grey,
            onTap: () {
              _launchYoutubeVideo(bridvideoURLlist[index]);
              print(bridvideoURLlist[index]);
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
                      Image.asset(bridvideolist[index].image,
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                          height: 122),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          bridvideolist[index].Text,
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
