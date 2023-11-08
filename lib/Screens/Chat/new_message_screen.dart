// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../Values/values.dart';
// import '../../constants/constants.dart';
// import '../../widgets/DarkBackground/darkRadialBackground.dart';
// import '../../widgets/Forms/search_box.dart';
// import '../../widgets/Navigation/app_header.dart';

// class NewMessageScreen extends StatelessWidget {
//   const NewMessageScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final searchController = TextEditingController();
//     return Scaffold(
//         body: Stack(children: [
//       DarkRadialBackground(
//         color: HexColor.fromHex("#181a1f"),
//         position: "topLeft",
//       ),
//       Padding(
//         padding: const EdgeInsets.only(top: 60.0),
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(right: 20, left: 20),
//               child: TaskezAppHeader(
//                 title: "New Message",
//                 widget: SizedBox(),
//               ),
//             ),
//             const SizedBox(height: 40),
//             Expanded(
//                 flex: 1,
//                 child: Container(
//                     width: double.infinity,
//                     height: double.infinity,
//                     decoration: BoxDecorationStyles.fadingGlory,
//                     child: Padding(
//                         padding: const EdgeInsets.all(3.0),
//                         child: DecoratedBox(
//                             decoration: BoxDecorationStyles.fadingInnerDecor,
//                             child: Padding(
//                                 padding: const EdgeInsets.all(20.0),
//                                 child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           Expanded(
//                                             flex: 3,
//                                             child: SearchBox(
                                             
//                                                 placeholder: 'Search Members',
//                                                 controller: searchController),
//                                           ),
//                                           Expanded(
//                                               flex: 1,
//                                               child: Text("Cancel",
//                                                   textAlign: TextAlign.right,
//                                                   style: GoogleFonts.lato(
//                                                       color: HexColor.fromHex(
//                                                           "616575"),
//                                                       fontSize: 20,
//                                                       fontWeight:
//                                                           FontWeight.bold))),
//                                         ],
//                                       ),
//                                       AppSpaces.verticalSpace20,
//                                       Text("SUGGESTED",
//                                           style: GoogleFonts.lato(
//                                             fontSize: 11,
//                                             fontWeight: FontWeight.w500,
//                                             color: HexColor.fromHex("616575"),
//                                           )),
//                                       AppSpaces.verticalSpace20,
//                                       Divider(
//                                         height: 2,
//                                         color: HexColor.fromHex("616575"),
//                                       ),
//                                       AppSpaces.verticalSpace20,
//                                       Expanded(
//                                           child: MediaQuery.removePadding(
//                                         context: context,
//                                         removeTop: true,
//                                         child: ListView(
//                                             children: [...onlineUsers]),
//                                       )),
//                                     ]))))))
//           ],
//         ),
//       ),
//     ]));
//   }
// }
