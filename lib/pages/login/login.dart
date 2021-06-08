import 'package:ecomon_time_flutter_app/buttons/ProceedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class LoginSellerPage extends StatefulWidget {
  @override
  _LoginSellerPageState createState() => _LoginSellerPageState();
}

class _LoginSellerPageState extends State<LoginSellerPage> with SingleTickerProviderStateMixin{

  bool loading = false;
  String _mobile;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var maskFormatter = new MaskTextInputFormatter(mask: '+7 (###) ###-##-##', filter: { "#": RegExp(r'[0-9]') });
    return Material(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Войти',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'Введите свой номер телефона и мы вышлем на него смс с кодом подтверждения',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF828282),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                  inputFormatters: [maskFormatter],

                onSaved: (String val) {
                  _mobile = val;
                },
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Номер телефона',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
             Container(
                 child: GestureDetector(
                     onTap: () async {
                       _validateInputs();
                     },
                    child: ProceedButton()
                 ),
            ),
          ],
        ),
      ),
    );
  }
}


