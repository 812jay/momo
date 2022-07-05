import 'package:flutter/material.dart';

class FolderBlock extends StatelessWidget {
  final String title;
  final Color color;
  const FolderBlock({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
      child: Column(
        children: [
          Icon(
            Icons.folder,
            size: 80,
            color: color,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
