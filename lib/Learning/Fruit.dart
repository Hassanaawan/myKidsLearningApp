import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kids/Alphabetssound/FruitSound.dart';
import 'package:kids/utils/model.dart';

import '../responcive.dart';

class Fruits extends StatefulWidget {
  @override
  State<Fruits> createState() => _FruitsState();
}

List<Numbermodel> FRUITlist = fruit1();

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: AppColor.colorContain,
          elevation: 0,
          title: Text(
            'Fruit',
            style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: ListView.builder(
              itemCount: FRUITlist.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return InkWell(
                    splashColor: Colors.redAccent,
                    onTap: () {
                      print(FRUITlist);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FruitSound(index),
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
                                FRUITlist[index].image,
                                height: 120,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                FRUITlist[index].Text,
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
