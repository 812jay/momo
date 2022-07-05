import 'package:flutter/material.dart';
import 'package:momo/views/friend/components/friend_search_block.dart';

Future showFriendSearchDialog({required BuildContext context}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        scrollable: true,
        title: Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(Icons.close),
          ),
        ),
        content: SizedBox(
          height: 500,
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: '친구 검색',
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                      FriendSearchBlock(
                        nickname: 'nickname',
                        intro: 'intro',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 15.0, right: 10.0),
              child: const Text('친구 신청'),
            ),
          )
        ],
      );
    },
  );
}
