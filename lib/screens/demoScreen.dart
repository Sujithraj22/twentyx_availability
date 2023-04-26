// import 'package:flutter/material.dart';
//
// class CircleIconRow extends StatefulWidget {
//   @override
//   _CircleIconRowState createState() => _CircleIconRowState();
// }
//
// class _CircleIconRowState extends State<CircleIconRow> {
//   int? _selectedIconIndex;
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedIconIndex = -1; // no icon selected by default
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: icons.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Icon(icons[index]),
//             title: Text('Icon ${index + 1}'),
//             onTap: () {
//               setState(() {
//                 switch (index) {
//                   case 0:
//                     icons[0] = Icons.favorite;
//                     break;
//                   case 1:
//                     icons[1] = Icons.thumb_up_alt;
//                     break;
//                   case 2:
//                     icons[2] = Icons.thumb_down_alt;
//                     break;
//                   case 3:
//                     icons[3] = Icons.star;
//                     break;
//                 }
//               });
//             },
//           );
//         },
//       ),
//     );
//   }
// }
