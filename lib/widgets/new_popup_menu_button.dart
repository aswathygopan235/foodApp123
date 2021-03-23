// import 'package:flutter/material.dart';

// enum MenuOptions { harder, smarter, selfStarter, tradingCharter }

// class NewPopupMenuButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<MenuOptions>(
//       elevation: 3.0,
//       itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuOptions>>[
//         PopupMenuItem(
//           child: SizedBox(height: 5.0),
//         ),
//         PopupMenuItem(
//           child: Container(
//             alignment: Alignment.center,
//             child: CircleAvatar(
//               radius: 65.0,
//               backgroundColor: Colors.grey,
//             ),
//           ),
//         ),
//         PopupMenuItem(
//           child: SizedBox(height: 5.0),
//         ),
//         PopupMenuItem<MenuOptions>(
//           value: MenuOptions.harder,
//           child: NewMenuOption(
//             iconColour: Colors.red,
//             menuText: 'Home',
//             iconImage: Icons.home,
//           ),
//         ),
//         PopupMenuItem<MenuOptions>(
//           value: MenuOptions.smarter,
//           child: NewMenuOption(
//               iconColour: Colors.teal,
//               menuText: 'Nearby Me',
//               iconImage: Icons.pin_drop_rounded),
//         ),
//         PopupMenuItem<MenuOptions>(
//           value: MenuOptions.selfStarter,
//           child: NewMenuOption(
//             iconColour: Colors.indigoAccent,
//             menuText: 'Restaurants',
//             iconImage: Icons.restaurant,
//           ),
//         ),
//         PopupMenuItem<MenuOptions>(
//           value: MenuOptions.tradingCharter,
//           child: NewMenuOption(
//             iconColour: Colors.yellow[800],
//             menuText: 'Profile',
//             iconImage: Icons.account_circle_rounded,
//           ),
//         ),
//         PopupMenuItem<MenuOptions>(
//           value: MenuOptions.tradingCharter,
//           child: NewMenuOption(
//               iconColour: Colors.red[200],
//               menuText: 'Cart',
//               iconImage: Icons.shopping_cart),
//         ),
//         PopupMenuItem<MenuOptions>(
//           value: MenuOptions.tradingCharter,
//           child: NewMenuOption(
//             iconColour: Colors.blue[800],
//             menuText: 'Orders',
//             iconImage: Icons.receipt,
//           ),
//         ),
//         PopupMenuItem<MenuOptions>(
//           value: MenuOptions.tradingCharter,
//           child: NewMenuOption(
//               iconColour: Colors.green,
//               menuText: 'Dine In',
//               iconImage: Icons.shopping_bag_rounded),
//         ),
//         PopupMenuItem(
//           child: Expanded(
//             child: Container(
//               height: 30.0,
//               width: double.infinity,
//               padding: EdgeInsets.all(0.0),
//               color: Colors.yellow[800],
//               child: Text('v 1.0.2'),
//             ),
//           ),
//         ),
//       ],
//       icon: Icon(
//         Icons.list,
//         size: 50.0,
//       ),
//     );
//   }
// }

// class NewMenuOption extends StatelessWidget {
//   final Color iconColour;
//   final String menuText;
//   final iconImage;
//   NewMenuOption({this.iconColour, this.menuText, this.iconImage});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           height: 50.0,
//           alignment: Alignment.center,
//           child: Row(
//             children: [
//               CircleAvatar(
//                 radius: 20.0,
//                 backgroundColor: iconColour,
//                 child: Icon(
//                   iconImage,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(width: 20.0),
//               Text(
//                 menuText,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           width: 250.0,
//           height: 2.0,
//           child: Container(color: Colors.grey[200]),
//         ),
//       ],
//     );
//   }
// }
