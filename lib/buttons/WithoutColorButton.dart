import 'package:flutter/material.dart';
import 'package:get/get.dart';


class WithoutColorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.width * 0.12,
        width: MediaQuery.of(context).size.width * 1,
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF2F74E0),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),





          ),
          onPressed: () {

          },
    child: GestureDetector(
    onTap: () {

    },
          child: const Text('ПРОДОЛЖИТЬ БЕЗ АВТОРИЗАЦИИ', style: TextStyle(
              color: Color(0xFF2F74E0), fontSize: 14, fontWeight: FontWeight.w600
          ),),
        ),
      ),
      ),
    );
  }
}