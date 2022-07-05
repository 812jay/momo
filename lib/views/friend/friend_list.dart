import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';
import 'package:momo/views/common/components/floating_action_button_add.dart';
import 'package:momo/views/common/components/nav_bar.dart';
import 'package:momo/views/friend/components/friend_block.dart';
import 'package:momo/views/friend/components/friend_search_dialog.dart';

class FriendListView extends StatelessWidget {
  static const routeName = '/friend';
  const FriendListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const NavBar(),
      appBar: commonAppBar(context: context, isLeading: true),
      floatingActionButton: floatingActionButtonAdd(
        icon: const Icon(
          Icons.people,
          color: Colors.white,
        ),
        onTap: () => showFriendSearchDialog(context: context),
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
              const SizedBox(height: 30.0),
              Expanded(
                child: ListView(
                  children: const [
                    FriendBlock(
                      intro: 'intro',
                      nickname: 'nickname',
                    ),
                    FriendBlock(
                      intro: 'intro',
                      nickname: 'nickname',
                    ),
                    FriendBlock(
                      intro: 'intro',
                      nickname: 'nickname',
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
