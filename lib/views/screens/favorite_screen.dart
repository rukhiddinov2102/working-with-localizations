import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text("Favorite".tr()),
      ),
      body:  Center(
        child: Text("Favorite".tr()),
      ),
    );
  }
}