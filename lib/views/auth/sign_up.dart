import 'package:flutter/material.dart';
import 'package:momo/views/common/components/common_app_bar.dart';

class SignUpView extends StatelessWidget {
  static const routeName = 'sign_up';
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nicknameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController authNumberController = TextEditingController();
    TextEditingController introController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConfirmController = TextEditingController();

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
                  TextField(
                    decoration: const InputDecoration(hintText: '이메일을 입력해주세요.'),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    '닉네임',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  TextField(
                    decoration: const InputDecoration(hintText: '닉네임을 입력해주세요.'),
                    keyboardType: TextInputType.name,
                    controller: nicknameController,
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    '휴대폰 번호',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Stack(
                    children: [
                      TextField(
                        decoration:
                            const InputDecoration(hintText: '휴대폰번호를 입력해주세요.'),
                        keyboardType: TextInputType.phone,
                        controller: phoneController,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.grey,
                            ),
                          ),
                          child: const Text(
                            '인증번호 전송',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    '인증번호 입력',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Stack(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          hintText: '인증번호를 입력해주세요.',
                          hintStyle: TextStyle(fontSize: 14.0),
                        ),
                        keyboardType: TextInputType.number,
                        controller: authNumberController,
                      ),
                      const Positioned(
                        right: 0.0,
                        bottom: 15.0,
                        child: Text(
                          '03:00',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    '한줄 인사',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(hintText: '한줄인사를 입력해주세요.'),
                    keyboardType: TextInputType.text,
                    controller: introController,
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    '비밀번호',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(hintText: '비밀번호를 입력해주세요.'),
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    obscureText: true,
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    '비밀번호 확인',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  TextField(
                    decoration:
                        const InputDecoration(hintText: '비밀번호 확인을 입력해주세요.'),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: passwordConfirmController,
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
