import 'package:ecomon_time_flutter_app/buttons/ProceedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class RegBuyerMainPage extends StatefulWidget {

  @override
  _RegBuyerMainPagState createState() => _RegBuyerMainPagState();
}

class _RegBuyerMainPagState extends State<RegBuyerMainPage> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Добавьте фото и укажите свое имя',
              style: TextStyle(
                color: Color(0xFF333333), fontSize: 16,
              ),),
              TextFormField(
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Укажите ваше имя';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Ваше имя',
                ),
              ),


              SizedBox(height: 10,),

              RegButtonMain(),


            ],
          ),

      ),
    );
  }
}


class RegButtonMain extends StatelessWidget {
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
              Get.toNamed('/loginBuyer');
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

