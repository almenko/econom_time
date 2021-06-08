import 'package:ecomon_time_flutter_app/buttons/ProceedButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';


class RegSellerMainPage extends StatefulWidget {

  @override
  _RegSellerMainPageState createState() => _RegSellerMainPageState();
}

class _RegSellerMainPageState extends State<RegSellerMainPage> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 10,),


          ],
        ),
      ),
    );
  }
}


