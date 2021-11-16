import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language/views/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: const MyApp(),
    supportedLocales: const [
      Locale('en', "US"),
      Locale('ru','RU'),
      Locale('uz','UZ'),
    ],
    path: "assets/languages",
    fallbackLocale: const Locale('uz','UZ'),
    saveLocale: true,

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        home: MainScreen());
  }
}
