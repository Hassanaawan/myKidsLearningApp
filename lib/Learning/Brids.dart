import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kids/Alphabetssound/BridSound.dart';
import 'package:kids/utils/model.dart';

import '../responcive.dart';

class Brids extends StatefulWidget {
  @override
  State<Brids> createState() => _BridsState();
}

List<Numbermodel> bridslist = BRIDS1();

class _BridsState extends State<Brids> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: AppColor.colorContain,
          elevation: 0,
          title: Text(
            'Bird',
            style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: ListView.builder(
              itemCount: bridslist.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return InkWell(
                    splashColor: Colors.redAccent,
                    onTap: () {
                      print(bridslist);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BridSound(index),
                          ));
                    },
                    child: Container(
                      height: 250,
                      child: Card(
                        color: AppColor.colorContain,
                        elevation: 5,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        shadowColor: Colors.grey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                bridslist[index].image,
                                height: 120,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                bridslist[index].Text,
                                style: TextStyle(
                                    color: Colors.black, fontFamily: "arlrdbd"),
                              )
                            ]),
                      ),
                    ));
              },
            ),
          ),
        ));
  }
}
