
import 'package:ecomon_time_flutter_app/buttons/RegButtonSeller.dart';
import 'package:ecomon_time_flutter_app/buttons/WithoutColorButton.dart';
import 'package:flutter/material.dart';


class WelcomePageSeller extends StatefulWidget {
  @override
  _WelcomePageSellerState createState() => _WelcomePageSellerState();
}

class _WelcomePageSellerState extends State<WelcomePageSeller> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/WelcomePageSeller.png', height: MediaQuery.of(context).size.height * 0.2,),
            SizedBox(height: 20,),
            Text('Продавец', style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 10,),
            Text('Для продажи автозапчастей', style: TextStyle(
              fontSize: 14, color: Color(0xFF828282),
            ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            RegButtonSeller(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 0.5,
                    width: MediaQuery.of(context).size.width * 0.4,

                    color: Color(0xFFBDBDBD),

                ),
                Text('или', style: TextStyle(
                  color: Color(0xFFBDBDBD), fontSize: 12
                ),),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 0.5,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Color(0xFFBDBDBD),

                ),
              ],
            ),
            SizedBox(height: 20),
            WithoutColorButton(),
            SizedBox(height: 20),
            Text('Продолжая', style: TextStyle(
              fontSize: 14, color: Color(0xFFBDBDBD)
            ),),
            Text('вы соглашаетесь с правилами сервиса', style: TextStyle(
                fontSize: 14, color: Color(0xFFBDBDBD)
            ),)

          ],
        ),
      ),
    );
  }
}
