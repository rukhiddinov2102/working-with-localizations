import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class BookMarkScreen extends StatelessWidget {
  const BookMarkScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text("Saved".tr()),
      ),
      body:   Center(
        child: Text("Saved".tr()),
      ),
    );
  }
}