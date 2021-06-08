import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 20, top: 50),
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: SizedBox(
          width: 55,
          height: 55,
          child: Icon(Icons.arrow_back_outlined)
        ),
      ),
    );
  }
}