import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text("Profile".tr()),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                   context.setLocale(Locale('uz','UZ'));
                  },
                  child: const Text("UZ")),
              ElevatedButton(onPressed: () {
                context.setLocale(Locale('ru','RU'));
              }, child: const Text("RU")),
              ElevatedButton(onPressed: () {
                context.setLocale(Locale('en','US'));
              }, child:  Text("EN")),
            ],
          ),
        ));
  }
}
