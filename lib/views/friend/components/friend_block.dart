import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FriendBlock extends StatelessWidget {
  final String nickname;
  final String email;
  final String intro;
  const FriendBlock({
    Key? key,
    required this.nickname,
    required this.email,
    required this.intro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Slidable(
          startActionPane: const ActionPane(
            motion: ScrollMotion(),
            extentRatio: 0.2,
            children: [
              SlidableAction(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                padding: EdgeInsets.only(top: 10.0),
                onPressed: null,
                label: '수정',
                icon: Icons.edit,
                foregroundColor: Colors.white,
                // ignore: use_full_hex_values_for_flutter_colors
                backgroundColor: Color(0xff966bfbf),
              )
            ],
          ),
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
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 30.0,
                  minRadius: 30.0,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/skate_board.jpg',
                      fit: BoxFit.fill,
                      width: 90.0,
                      height: 90.0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nickname,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(email),
                    const SizedBox(height: 5.0),
                    Text(intro),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
