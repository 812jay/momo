import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  static const routeName = '/sign_in';
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'momo',
                  style: TextStyle(fontSize: 60.0),
                ),
                const SizedBox(height: 50.0),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(hintText: 'email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: 'password'),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed('sign_up'),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).pushNamed('find_password'),
                      child: const Text(
                        'Find Password',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
