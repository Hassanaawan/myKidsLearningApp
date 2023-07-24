import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kids/Alphabetssound/MonthSound.dart';
import 'package:kids/utils/model.dart';

import '../responcive.dart';

class Month extends StatelessWidget {
  List<Numbermodel> monthlist = month1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: AppColor.colorContain,
          elevation: 0,
          title: Text(
            'Month',
            style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            child: ListView.builder(
              itemCount: monthlist.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return InkWell(
                    splashColor: Colors.redAccent,
                    onTap: () {
                      print(monthlist);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MonthSound(index),
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
                                monthlist[index].image,
                                height: 120,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                monthlist[index].Text,
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
