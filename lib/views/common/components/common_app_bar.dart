import 'package:flutter/material.dart';

PreferredSizeWidget commonAppBar(
    {required BuildContext context, required bool isLeading}) {
  return AppBar(
    iconTheme: const IconThemeData(color: Colors.black),
    leading: isLeading
        ? GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_ios),
          )
        : null,
    title: GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/home'),
      child: const Text(
        'momo',
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
    ),
    centerTitle: true,
    titleTextStyle: const TextStyle(color: Colors.black),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: 0,
  );
}
