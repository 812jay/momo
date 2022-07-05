import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 270,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/skate_board.jpg',
                  fit: BoxFit.cover,
                  width: 90.0,
                  height: 90.0,
                ),
              ),
            ),
            accountName: const Text(
              'nickname',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: const Text(
              'myId@mail.com',
              style: TextStyle(color: Colors.black),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/home'),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.home,
                    size: 28.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '홈',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/memo'),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.note_rounded,
                    size: 28.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '나의 메모',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/folder'),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.folder,
                    size: 28.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '폴더 관리',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/friend'),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.people,
                    size: 28.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    '친구 관리',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/setting'),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                children: const [
                  Icon(Icons.settings),
                  SizedBox(width: 10),
                  Text('설정'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
