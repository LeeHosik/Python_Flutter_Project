import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'home.dart';
import 'package:kakao_flutter_sdk_share/kakao_flutter_sdk_share.dart';
// import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart'; // 안되면 윗줄 지우고 이걸로 적용해보기

void main() async {
  KakaoSdk.init(
    nativeAppKey: '667d213d75444eed962843327e23e34a',
  );
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Local Now',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: FlexThemeData.light(scheme: FlexScheme.hippieBlue),
      // The Mandy red, dark theme.
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.hippieBlue),
      themeMode: ThemeMode.system,

      home: const Home(),
    );
  }
}