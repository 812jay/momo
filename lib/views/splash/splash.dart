import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  static const routeName = '/splash';
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Navigator.of(context).pushReplacementNamed('/home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 400,
          child: Center(
            child: Text(
              'momo',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
