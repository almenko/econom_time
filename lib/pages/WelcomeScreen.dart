import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Выберите режим', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF333333)
              ),
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/welcomePageBuyer');
                      },
                    child: Column(
                      children: [
                        SizedBox(height: 28),
                        Image.asset('assets/images/welcomeScreen1.png',
                        ),
                        SizedBox(height: 15),
                        Text('Покупатель',
                        style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600,
                        ),
                        ),
                        SizedBox(height: 16),
                        Text('Для поиска и заказа',
                        style: TextStyle(
                          fontSize: 12, color: Color(0xFF828282), fontWeight: FontWeight.normal
                        ),),
                        Text('автозапчастей',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFF828282), fontWeight: FontWeight.normal
                          ),),
                        SizedBox(height: 25),
                      ],
                    ),
                    ),

                  ),
                  SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.toNamed('/welcomePageSeller');
                      },
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Image.asset('assets/images/welcomeScreen2.png',
                          ),
                        SizedBox(height: 15),
                        Text('Продавец',
                          style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text('Для продажи',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFF828282), fontWeight: FontWeight.normal
                          ),),
                        Text('автозапчастей',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xFF828282), fontWeight: FontWeight.normal
                          ),),
                        SizedBox(height: 25),
                      ],
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
