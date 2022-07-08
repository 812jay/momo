import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

class CommonFabCircularMenu extends StatelessWidget {
  const CommonFabCircularMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FabCircularMenu(
      // Cannot be `Alignment.center`
      alignment: Alignment.bottomLeft,
      ringColor: Colors.grey.withOpacity(0.2),
      ringDiameter: 400.0,
      ringWidth: 120.0,
      fabSize: 44.0,
      fabElevation: 8.0,
      fabIconBorder: const CircleBorder(),
      // Also can use specific color based on wether
      // the menu is open or not:
      fabOpenColor: Colors.black,
      fabCloseColor: Colors.white,
      // These properties take precedence over fabColor
      fabColor: Colors.white,
      fabOpenIcon: const Icon(Icons.menu, color: Colors.black),
      fabCloseIcon: const Icon(Icons.close, color: Colors.white),
      fabMargin: const EdgeInsets.all(16.0),
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOutCirc,
      onDisplayChange: (isOpen) {
        // _showSnackBar(context, "The menu is ${isOpen ? "open" : "closed"}");
      },
      children: <Widget>[
        RawMaterialButton(
          onPressed: () {
            // _showSnackBar(context, "You pressed 1");
            Navigator.of(context).pushNamed('/folder');
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: const Icon(
            Icons.folder,
            color: Colors.black,
            size: 38.0,
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/memo');
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: const Icon(
            Icons.note_rounded,
            color: Colors.black,
            size: 38.0,
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/friend');
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: const Icon(
            Icons.people,
            color: Colors.black,
            size: 38.0,
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24.0),
          child: const Icon(
            Icons.home,
            color: Colors.black,
            size: 38.0,
          ),
        )
      ],
    );
  }
}
