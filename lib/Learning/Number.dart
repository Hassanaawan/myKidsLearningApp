import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kids/Alphabetssound/NumberSound.dart';
import 'package:kids/utils/model.dart';

import '../responcive.dart';

class Numbers extends StatefulWidget {
  @override
  State<Numbers> createState() => _NumbersState();
}

List<Numbermodel> list = NumberList();

class _NumbersState extends State<Numbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: AppColor.colorContain,
        elevation: 0,
        title: Text(
          'Number',
          style: TextStyle(color: Colors.black, fontFamily: "arlrdbd"),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return InkWell(
                splashColor: Colors.redAccent,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NumberSound(index),
                      ));
                  print(index);
                },
                child: Container(
                  // width: 100,
                  height: 250,
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
                                                            ? Color(0xffCCCCFF)
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
                                                                        : index ==
                                                                                13
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
                                                                                                                        : index == 25
                                                                                                                            ? Color(0xffFF6433)
                                                                                                                            : index == 26
                                                                                                                                ? Color(0xffCD5C5C)
                                                                                                                                : index == 27
                                                                                                                                    ? Color(0xffF08080)
                                                                                                                                    : index == 28
                                                                                                                                        ? Color(0xffFA8072)
                                                                                                                                        : index == 29
                                                                                                                                            ? Color(0xffE9967A)
                                                                                                                                            : index == 30
                                                                                                                                                ? Color(0xff9FE2BF)
                                                                                                                                                : index == 31
                                                                                                                                                    ? Color(0xff40E0D0)
                                                                                                                                                    : index == 32
                                                                                                                                                        ? Color(0xffFFBF00)
                                                                                                                                                        : index == 33
                                                                                                                                                            ? Color(0xff6495ED)
                                                                                                                                                            : index == 34
                                                                                                                                                                ? Color(0xffCCCCFF)
                                                                                                                                                                : index == 35
                                                                                                                                                                    ? Color(0xffDE3163)
                                                                                                                                                                    : index == 36
                                                                                                                                                                        ? Color(0xffFF7F50)
                                                                                                                                                                        : index == 37
                                                                                                                                                                            ? Color(0xff008000)
                                                                                                                                                                            : index == 38
                                                                                                                                                                                ? Color(0xff808000)
                                                                                                                                                                                : index == 39
                                                                                                                                                                                    ? Color(0xffFF0000)
                                                                                                                                                                                    : index == 40
                                                                                                                                                                                        ? Color(0xff808080)
                                                                                                                                                                                        : index == 41
                                                                                                                                                                                            ? Color(0xff800000)
                                                                                                                                                                                            : index == 42
                                                                                                                                                                                                ? Color(0xff00FFFF)
                                                                                                                                                                                                : index == 43
                                                                                                                                                                                                    ? Color(0xffFF00FF)
                                                                                                                                                                                                    : index == 44
                                                                                                                                                                                                        ? Color(0xff008080)
                                                                                                                                                                                                        : index == 45
                                                                                                                                                                                                            ? Color(0xff800080)
                                                                                                                                                                                                            : index == 46
                                                                                                                                                                                                                ? Color(0xff27AE60)
                                                                                                                                                                                                                : index == 47
                                                                                                                                                                                                                    ? Color(0xff27AEA4)
                                                                                                                                                                                                                    : index == 48
                                                                                                                                                                                                                        ? Color(0xff2775AE)
                                                                                                                                                                                                                        : index == 49
                                                                                                                                                                                                                            ? Color(0xff0D1F20)
                                                                                                                                                                                                                            : index == 50
                                                                                                                                                                                                                                ? Color(0xffFF6433)
                                                                                                                                                                                                                                : index == 51
                                                                                                                                                                                                                                    ? Color(0xffCD5C5C)
                                                                                                                                                                                                                                    : index == 52
                                                                                                                                                                                                                                        ? Color(0xffF08080)
                                                                                                                                                                                                                                        : index == 53
                                                                                                                                                                                                                                            ? Color(0xffFA8072)
                                                                                                                                                                                                                                            : index == 54
                                                                                                                                                                                                                                                ? Color(0xffE9967A)
                                                                                                                                                                                                                                                : index == 55
                                                                                                                                                                                                                                                    ? Color(0xff9FE2BF)
                                                                                                                                                                                                                                                    : index == 56
                                                                                                                                                                                                                                                        ? Color(0xff40E0D0)
                                                                                                                                                                                                                                                        : index == 57
                                                                                                                                                                                                                                                            ? Color(0xffFFBF00)
                                                                                                                                                                                                                                                            : index == 58
                                                                                                                                                                                                                                                                ? Color(0xff6495ED)
                                                                                                                                                                                                                                                                : index == 59
                                                                                                                                                                                                                                                                    ? Color(0xffCCCCFF)
                                                                                                                                                                                                                                                                    : index == 60
                                                                                                                                                                                                                                                                        ? Color(0xffDE3163)
                                                                                                                                                                                                                                                                        : index == 61
                                                                                                                                                                                                                                                                            ? Color(0xffFF7F50)
                                                                                                                                                                                                                                                                            : index == 62
                                                                                                                                                                                                                                                                                ? Color(0xff008000)
                                                                                                                                                                                                                                                                                : index == 63
                                                                                                                                                                                                                                                                                    ? Color(0xff808000)
                                                                                                                                                                                                                                                                                    : index == 64
                                                                                                                                                                                                                                                                                        ? Color(0xffFF0000)
                                                                                                                                                                                                                                                                                        : index == 65
                                                                                                                                                                                                                                                                                            ? Color(0xff808080)
                                                                                                                                                                                                                                                                                            : index == 66
                                                                                                                                                                                                                                                                                                ? Color(0xff800000)
                                                                                                                                                                                                                                                                                                : index == 67
                                                                                                                                                                                                                                                                                                    ? Color(0xff00FFFF)
                                                                                                                                                                                                                                                                                                    : index == 68
                                                                                                                                                                                                                                                                                                        ? Color(0xffFF00FF)
                                                                                                                                                                                                                                                                                                        : index == 69
                                                                                                                                                                                                                                                                                                            ? Color(0xff008080)
                                                                                                                                                                                                                                                                                                            : index == 70
                                                                                                                                                                                                                                                                                                                ? Color(0xff800080)
                                                                                                                                                                                                                                                                                                                : index == 71
                                                                                                                                                                                                                                                                                                                    ? Color(0xff27AE60)
                                                                                                                                                                                                                                                                                                                    : index == 72
                                                                                                                                                                                                                                                                                                                        ? Color(0xff27AEA4)
                                                                                                                                                                                                                                                                                                                        : index == 73
                                                                                                                                                                                                                                                                                                                            ? Color(0xff2775AE)
                                                                                                                                                                                                                                                                                                                            : index == 74
                                                                                                                                                                                                                                                                                                                                ? Color(0xff0D1F20)
                                                                                                                                                                                                                                                                                                                                : index == 75
                                                                                                                                                                                                                                                                                                                                    ? Color(0xffFF6433)
                                                                                                                                                                                                                                                                                                                                    : index == 76
                                                                                                                                                                                                                                                                                                                                        ? Color(0xffCD5C5C)
                                                                                                                                                                                                                                                                                                                                        : index == 77
                                                                                                                                                                                                                                                                                                                                            ? Color(0xffF08080)
                                                                                                                                                                                                                                                                                                                                            : index == 78
                                                                                                                                                                                                                                                                                                                                                ? Color(0xffFA8072)
                                                                                                                                                                                                                                                                                                                                                : index == 79
                                                                                                                                                                                                                                                                                                                                                    ? Color(0xffE9967A)
                                                                                                                                                                                                                                                                                                                                                    : index == 80
                                                                                                                                                                                                                                                                                                                                                        ? Color(0xff9FE2BF)
                                                                                                                                                                                                                                                                                                                                                        : index == 81
                                                                                                                                                                                                                                                                                                                                                            ? Color(0xff40E0D0)
                                                                                                                                                                                                                                                                                                                                                            : index == 82
                                                                                                                                                                                                                                                                                                                                                                ? Color(0xffFFBF00)
                                                                                                                                                                                                                                                                                                                                                                : index == 83
                                                                                                                                                                                                                                                                                                                                                                    ? Color(0xff6495ED)
                                                                                                                                                                                                                                                                                                                                                                    : index == 84
                                                                                                                                                                                                                                                                                                                                                                        ? Color(0xffCCCCFF)
                                                                                                                                                                                                                                                                                                                                                                        : index == 85
                                                                                                                                                                                                                                                                                                                                                                            ? Color(0xffDE3163)
                                                                                                                                                                                                                                                                                                                                                                            : index == 86
                                                                                                                                                                                                                                                                                                                                                                                ? Color(0xffFF7F50)
                                                                                                                                                                                                                                                                                                                                                                                : index == 87
                                                                                                                                                                                                                                                                                                                                                                                    ? Color(0xff008000)
                                                                                                                                                                                                                                                                                                                                                                                    : index == 88
                                                                                                                                                                                                                                                                                                                                                                                        ? Color(0xff808000)
                                                                                                                                                                                                                                                                                                                                                                                        : index == 89
                                                                                                                                                                                                                                                                                                                                                                                            ? Color(0xffFF0000)
                                                                                                                                                                                                                                                                                                                                                                                            : index == 90
                                                                                                                                                                                                                                                                                                                                                                                                ? Color(0xff808080)
                                                                                                                                                                                                                                                                                                                                                                                                : index == 91
                                                                                                                                                                                                                                                                                                                                                                                                    ? Color(0xff800000)
                                                                                                                                                                                                                                                                                                                                                                                                    : index == 92
                                                                                                                                                                                                                                                                                                                                                                                                        ? Color(0xff00FFFF)
                                                                                                                                                                                                                                                                                                                                                                                                        : index == 93
                                                                                                                                                                                                                                                                                                                                                                                                            ? Color(0xffFF00FF)
                                                                                                                                                                                                                                                                                                                                                                                                            : index == 94
                                                                                                                                                                                                                                                                                                                                                                                                                ? Color(0xff008080)
                                                                                                                                                                                                                                                                                                                                                                                                                : index == 95
                                                                                                                                                                                                                                                                                                                                                                                                                    ? Color(0xff800080)
                                                                                                                                                                                                                                                                                                                                                                                                                    : index == 96
                                                                                                                                                                                                                                                                                                                                                                                                                        ? Color(0xff27AE60)
                                                                                                                                                                                                                                                                                                                                                                                                                        : index == 97
                                                                                                                                                                                                                                                                                                                                                                                                                            ? Color(0xff27AEA4)
                                                                                                                                                                                                                                                                                                                                                                                                                            : index == 98
                                                                                                                                                                                                                                                                                                                                                                                                                                ? Color(0xff2775AE)
                                                                                                                                                                                                                                                                                                                                                                                                                                : index == 99
                                                                                                                                                                                                                                                                                                                                                                                                                                    ? Color(0xff0D1F20)
                                                                                                                                                                                                                                                                                                                                                                                                                                    : Colors.purple,
                    elevation: 5,
                    margin: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    shadowColor: Colors.grey,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  list[index].image,
                                  fit: BoxFit.fill,
                                  height:
                                      MediaQuery.of(context).size.width * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                                Image.asset(
                                  list[index].image2,
                                  fit: BoxFit.fill,
                                  height:
                                      MediaQuery.of(context).size.width * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                ),
                              ]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  list[index].Text,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "arlrdbd",
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
