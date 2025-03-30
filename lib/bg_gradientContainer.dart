// // ignore: file_names
// import 'package:flutter/material.dart';
// import 'package:quiz_app/content_section.dart';

// class BgGradientcontainer extends StatelessWidget {
//   const BgGradientcontainer(
//     this.colors, {
//     super.key,
//   }); // this is the constructor where we can pass how many colors we want to use in the gradient

//   final List<Color>
//   colors; // this is the list of colors that we want to use in the gradient

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end:
//               Alignment
//                   .bottomRight, // this is the gradient alignment that we are using)
//         ),
//       ),
//       child: Center(child: ContentSection()),
//     );
//   }
// }
