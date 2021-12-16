// ignore_for_file: file_names

import 'package:flutter/material.dart';

appBar(String? itemName, BuildContext context) {
  return AppBar(
    title: Text(
      itemName!,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(Icons.chevron_left_rounded),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar.png"),
        ),
      ),
    ],
  );
}


// ppBar(
//     title: Text(
//       itemName!,
//       style: const TextStyle(
//         color: Colors.black,
//         fontSize: 20,
//         fontWeight: FontWeight.w600,
//       ),
//     ),
//     leading: IconButton(
//       onPressed: () => Navigator.pop(context),
//       icon: Icon(Icons.chevron_left_rounded),
//     ),
//     actions: [Padding(padding: EdgeInsets.only(right:10.0),child: CircleAvatar(backgroundImage: AssetImage("assets/images/avatar.png"),),],