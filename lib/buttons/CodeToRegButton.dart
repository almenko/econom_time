import 'package:flutter/material.dart';


class RegButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: MediaQuery.of(context).size.width * 1,
        margin: EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.width * 0.12,
        child: ElevatedButton(

          style: ButtonStyle(


          ),
          onPressed: () {},
          child: const Text('ВХОД | РЕГИСТРАЦИЯ', style: TextStyle(
            color: Color(0xFFffffff), fontSize: 14, fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}