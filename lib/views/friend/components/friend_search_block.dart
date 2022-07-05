import 'package:flutter/material.dart';

class FriendSearchBlock extends StatelessWidget {
  final String nickname;
  final String intro;
  const FriendSearchBlock({
    Key? key,
    required this.nickname,
    required this.intro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Row(
            children: [
              CircleAvatar(
                maxRadius: 20.0,
                minRadius: 20.0,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/skate_board.jpg',
                    fit: BoxFit.fill,
                    width: 60.0,
                    height: 60.0,
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
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    intro,
                    style: const TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.check,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
