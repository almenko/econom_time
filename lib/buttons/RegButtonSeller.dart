import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RegButtonSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF0F64D6),
                Color(0xFF6C92F4),
              ],
            ),
          borderRadius: BorderRadius.circular(10),
        ),
          width: MediaQuery.of(context).size.width * 1,
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.width * 0.1,
        child: ElevatedButton(
          style: ButtonStyle(


          ),
          onPressed: () {  },
          child: GestureDetector(
          onTap: () {
            Get.toNamed('/loginSeller');
          },
          child: const Text('ВХОД | РЕГИСТРАЦИЯ', style: TextStyle(
            color: Color(0xFFffffff), fontSize: 14, fontWeight: FontWeight.w400
          ),),
        ),
        ),
      ),
    );
  }
}