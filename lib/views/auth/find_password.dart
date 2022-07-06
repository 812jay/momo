import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';

class FindPasswordView extends StatelessWidget {
  static const routeName = 'find_password';
  const FindPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: commonAppBar(context: context, isLeading: true),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0),
                const Text('이메일 주소'),
                const SizedBox(height: 10.0),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(hintText: '이메일을 입력해주세요.'),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30.0),
                const Text('휴대폰 번호'),
                const SizedBox(height: 10.0),
                TextField(
                  controller: emailController,
                  decoration:
                      const InputDecoration(hintText: '인증받을 휴대폰 번호를 입력해주세요.'),
                  keyboardType: TextInputType.phone,
                ),
              ],
            ),
          ),
          const Spacer(),
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
                  '인증번호 전송',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
