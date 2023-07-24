//
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

//
//
// class Responsive extends StatelessWidget {
//   final Widget mobile;
//   final Widget mobileLarge;
//   final Widget tablet;
//   final Widget desktop;
//
//   const Responsive({
//     Key key,
//      this.mobile,
//     this.tablet,
//      this.desktop,
//     this.mobileLarge,
//   }) : super(key: key);
//
//   static bool isMobile(BuildContext context) =>
//       MediaQuery.of(context).size.width <= 500;
//
//   static bool isMobileLarge(BuildContext context) =>
//       MediaQuery.of(context).size.width <= 700;
//
//   static bool isTablet(BuildContext context) =>
//       MediaQuery.of(context).size.width < 1024;
//
//   static bool isDesktop(BuildContext context) =>
//       MediaQuery.of(context).size.width >= 1024;
//
//   @override
//   Widget build(BuildContext context) {
//     final Size _size = MediaQuery.of(context).size;
//     if (_size.width >= 1024) {
//       return desktop;
//     } else if (_size.width >= 700 && tablet != null) {
//       return tablet;
//     } else if (_size.width >= 500 && mobileLarge != null) {
//       return mobileLarge;
//     } else {
//       return mobile;
//     }
//   }
// }
// class ReuseContainer extends StatefulWidget {
//   const ReuseContainer(
//       {Key key,
//       this.mainImage,
//       this.arrowImage,
//       this.containerColor,
//       this.text,
//       this.textcolor,
//       this.textsize})
//       : super(key: key);
//   final Image mainImage;
//   final Image arrowImage;
//   final int containerColor;
//   final Text text;
//   final int textcolor;
//   final double textsize;

//   @override
//   State<ReuseContainer> createState() => _ReuseContainerState();
// }

// class _ReuseContainerState extends State<ReuseContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         // height: size.height * 0.3 - 27,
//         decoration: BoxDecoration(
//             color: Color(widget.containerColor),
//             borderRadius: BorderRadius.circular(10)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0, right: 20),
//               child: SvgPicture.asset(
//                 widget.mainImage.toString(),
//                 height: 140,
//                 width: 217,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Text(widget.text.toString(),
//                       style: GoogleFonts.atma(
//                           fontSize: 30,
//                           fontWeight: FontWeight.w700,
//                           color: Color(widget.textcolor))),
//                 ),
//                 SizedBox(
//                   width: 70,
//                 ),
//                 SvgPicture.asset(
//                   widget.arrowImage.toString(),
//                   height: 70,
//                 )
//               ],
//             ),
//           ],
//         ));
//   }
// }
class AppColor {
  static const Color shapeContain = const Color(0xff7979E0);
  static const Color animalContain = const Color(0xffF39BFF);
  static const Color birdContain = const Color(0xffC55E4A);
  static const Color flowerContain = const Color(0xffE85151);
  static const Color fruitContain = const Color(0xff54B88B);
  static const Color monthsContain = const Color(0xff0A77BE);
  static const Color vegetableContain = const Color(0xff89BA27);
  static const Color colorCard = const Color(0xffE9967A);
  static const Color colorContain = const Color(0xffF5F5F5);
  static const Color soundCard = const Color(0xffF3F3F3);
  static const Color splashcolor = const Color(0xffEAF6F6);
}
