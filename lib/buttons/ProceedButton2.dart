import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProceedButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: MediaQuery.of(context).size.width * 1,
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.width * 0.12,
        child: ElevatedButton(

          style: ButtonStyle(


          ),
          onPressed: () {
            Get.toNamed('/regBuyerMain');
          },
          child: const Text('ПРОДОЛЖИТЬ', style: TextStyle(
            color: Color(0xFFffffff), fontSize: 14, fontWeight: FontWeight.w600,
          ),),
        ),
      ),
    );
  }
}