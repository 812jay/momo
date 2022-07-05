import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';
import 'package:momo/views/common/components/floating_action_button_add.dart';
import 'package:momo/views/common/components/nav_bar.dart';
import 'package:momo/views/memo/components/memo_block.dart';

class MemoListView extends StatelessWidget {
  static const routeName = '/memo';
  const MemoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: commonAppBar(context: context, isLeading: true),
      floatingActionButton: floatingActionButtonAdd(
        icon: const Icon(
          Icons.note,
          color: Colors.white,
        ),
        onTap: () => Navigator.of(context).pushNamed('/memo/post'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.folder,
                          size: 28.0,
                        ),
                        Text(
                          '전체폴더',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.calendar_month,
                          size: 28.0,
                        ),
                        Text(
                          '전체날짜',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              Expanded(
                child: ListView(
                  children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
