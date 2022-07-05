import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';
import 'package:momo/views/common/components/floating_action_button_add.dart';
import 'package:momo/views/common/components/nav_bar.dart';
import 'package:momo/views/folder/components/folder_block.dart';

class FolderListView extends StatelessWidget {
  static const routeName = '/folder';
  const FolderListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: commonAppBar(context: context, isLeading: true),
      floatingActionButton: floatingActionButtonAdd(
        icon: const Icon(
          Icons.folder,
          color: Colors.white,
        ),
        onTap: () {},
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 120.0,
                  ),
                  children: const [
                    FolderBlock(
                      title: '업무',
                      color: Colors.amber,
                    ),
                    FolderBlock(
                      title: '운동',
                      color: Colors.blue,
                    ),
                    FolderBlock(
                      title: '개인프로젝트',
                      color: Colors.red,
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
