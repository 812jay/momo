import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';
import 'package:momo/views/common/components/floating_action_button_add.dart';
import 'package:momo/views/common/components/nav_bar.dart';
import 'package:momo/views/memo/components/memo_block.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: commonAppBar(context: context, isLeading: false),
      floatingActionButton: floatingActionButtonAdd(
        icon: const Icon(
          Icons.note,
          color: Colors.white,
        ),
        onTap: () => Navigator.of(context).pushNamed('/memo/post'),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('/memo'),
                child: const Text(
                  'more',
                  textAlign: TextAlign.right,
                ),
              ),
              MemoBlock(
                regDate: DateTime.now(),
                title: '바쁜하루',
                folder: '나의폴더',
                content: '쉴틈이없다..',
              ),
              MemoBlock(
                regDate: DateTime.now(),
                title: '바쁜하루',
                folder: '나의폴더',
                content: '쉴틈이없다..',
              ),
              MemoBlock(
                regDate: DateTime.now(),
                title: '바쁜하루',
                folder: '나의폴더',
                content: '쉴틈이없다..',
              ),
              MemoBlock(
                regDate: DateTime.now(),
                title: '바쁜하루',
                folder: '나의폴더',
                content: '쉴틈이없다..',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
