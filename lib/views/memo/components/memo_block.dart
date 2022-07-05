import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MemoBlock extends StatelessWidget {
  final DateTime regDate;
  final String title;
  final String folder;
  final String content;

  const MemoBlock(
      {Key? key,
      required this.regDate,
      required this.title,
      required this.folder,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String regDateStr = formatDate(regDate, [yyyy, '.', mm, '.', dd]);
    String regDateTimeStr = formatDate(regDate, [am, '', hh, ':', nn]);
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Slidable(
          endActionPane: const ActionPane(
            motion: ScrollMotion(),
            extentRatio: 0.2,
            children: [
              SlidableAction(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                padding: EdgeInsets.only(top: 10.0),
                onPressed: null,
                label: '삭제',
                icon: Icons.delete,
                backgroundColor: Color(0xFFE93459),
              )
            ],
          ),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      regDateStr,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(regDateTimeStr),
                  ],
                ),
                Text(
                  folder,
                  // ignore: use_full_hex_values_for_flutter_colors
                  style: const TextStyle(color: Color(0xffe73a9ad)),
                ),
                const SizedBox(height: 10),
                Text(title),
                const SizedBox(height: 10),
                Text(content),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
