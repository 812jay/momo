import 'package:flutter/material.dart';

Widget floatingActionButtonAdd(
    {required Icon icon, required VoidCallback onTap}) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: GestureDetector(
      onTap: onTap,
      child: icon,
    ),
  );
}
