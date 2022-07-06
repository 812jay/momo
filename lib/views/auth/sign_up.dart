import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';

class SignUpView extends StatelessWidget {
  static const routeName = 'sign_up';
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context: context, isLeading: true),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ListView(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        maxRadius: 50.0,
                        minRadius: 50.0,
                        child: ClipOval(
                          child: Icon(
                            Icons.account_circle_rounded,
                            size: 100.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    '이메일',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: '이메일을 입력해주세요.'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    '닉네임',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: '닉네임을 입력해주세요.'),
                    keyboardType: TextInputType.name,
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    '휴대폰 번호',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: '휴대폰번호를 입력해주세요.'),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    '한줄 인사',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: '한줄인사를 입력해주세요.'),
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    '비밀번호',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: '비밀번호를 입력해주세요.'),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 40.0),
                  const Text(
                    '비밀번호 확인',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: '비밀번호 확인을 입력해주세요.'),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 40.0, top: 15.0),
              decoration: const BoxDecoration(color: Colors.black),
              width: double.infinity,
              child: const Center(
                child: Text(
                  '회원가입',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
