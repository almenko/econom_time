import 'package:ecomon_time_flutter_app/buttons/ProceedButton2.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';


class LoginCodeSellerPage extends StatefulWidget {
  @override
  _LoginCodeSellerPageState createState() => _LoginCodeSellerPageState();
}

class _LoginCodeSellerPageState extends State<LoginCodeSellerPage> {
  @override
  Widget build(BuildContext context) {
    String _code="";
    return Material(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Введите полученный код',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'Мы отправили смс с кодом подтверждения на номер +7 777 777 77 77',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF828282),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: PinFieldAutoFill(
                decoration: UnderlineDecoration(
                  textStyle: TextStyle(fontSize: 48, color: Colors.black),
                  colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
                ),
                  currentCode: _code,
                onCodeSubmitted: (code) {},
                onCodeChanged: (code) {
                  if (code.length == 4) {
                    FocusScope.of(context).requestFocus(FocusNode());
                  }
                },

                  codeLength: 4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            ProceedButton2(),
          ],
        ),
      ),
    );
  }
}
