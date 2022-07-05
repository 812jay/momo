// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:momo/providers/auth_provider.dart';
import 'package:momo/views/auth/sign_in.dart';
import 'package:momo/views/folder/folder_list.dart';
import 'package:momo/views/friend/friend_list.dart';
import 'package:momo/views/home/home.dart';
import 'package:momo/views/memo/memo_list.dart';
import 'package:momo/views/memo/memo_post.dart';
import 'package:momo/views/setting/setting.dart';
import 'package:momo/views/splash/splash.dart';
import 'package:provider/provider.dart';
// import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => AuthProvider(),
        )
      ],
      child: MaterialApp(
        initialRoute: SplashView.routeName,
        routes: {
          SplashView.routeName: (context) => const SplashView(),
          Home.routeName: (context) => const Home(),
          SignInView.routeName: (context) => const SignInView(),
          FolderListView.routeName: (context) => const FolderListView(),
          MemoListView.routeName: (context) => const MemoListView(),
          FriendListView.routeName: (context) => const FriendListView(),
          SettingView.routeName: (context) => const SettingView(),
          MemoPost.routeName: (context) => const MemoPost(),
        },
      ),
    );
  }
}
