import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';
import 'package:momo/views/common/components/nav_bar.dart';

class SettingView extends StatelessWidget {
  static const routeName = '/setting';
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: commonAppBar(context),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10.0),
                CircleAvatar(
                  maxRadius: 50.0,
                  minRadius: 50.0,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/skate_board.jpg',
                      fit: BoxFit.fill,
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'nickname',
                      style: TextStyle(fontSize: 23.0),
                    ),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.mode),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'email',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.mode),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'intro',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.mode),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
