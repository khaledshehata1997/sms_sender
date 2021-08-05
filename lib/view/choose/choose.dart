import 'package:flutter/material.dart';
import 'package:sms_sender/view/auth/sign_in.dart';
import 'package:sms_sender/view/home/home_view.dart';

import '../../constants.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: mediQuery.height*.06,),
            Image.asset('images/message.png',width: mediQuery.width*.3,
            height: mediQuery.height*.19,
            ),
            SizedBox(height: mediQuery.height*.04,),
            Text('- يمكنك الان تجربة وتصفح التطبيق قبل التسجيل \nاو التسجيل مباشرة.',
              style: TextStyle(fontSize: 18),
              textDirection: TextDirection.rtl,),
            SizedBox(height: mediQuery.height*.06,),
            chooseElement(context, 'تسجيل الدخول', () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
            }, Icons.login),
            SizedBox(
              height: mediQuery.height * .045,
            ),
            chooseElement(context, 'التصفح اولا', () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
                Icons.remove_red_eye),
          ],
        ),
      ),
    );
  }
  Widget chooseElement(
      context,
      title,
      Function fun,
      icon,
      ) {
    return GestureDetector(
      onTap: (){
        fun();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        height: MediaQuery.of(context).size.height * .07,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(spreadRadius: 1, color: mainColor, blurRadius: 2)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Icon(icon)
          ],
        ),
      ),
    );
  }
}
