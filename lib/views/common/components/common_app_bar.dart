import 'package:flutter/material.dart';

PreferredSizeWidget commonAppBar(BuildContext context) {
  return AppBar(
    iconTheme: const IconThemeData(color: Colors.black),
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
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/setting');
          },
          child: const Icon(Icons.settings),
        ),
      )
    ],
    titleTextStyle: const TextStyle(color: Colors.black),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: 0,
  );
}
