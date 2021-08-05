import 'package:flutter/material.dart';
import 'package:sms_sender/constants.dart';
import 'package:sms_sender/view/groups/groups_home.dart';
import 'package:sms_sender/view/new_message/new_message_form.dart';
import 'package:sms_sender/view/recharge_balance/charge_balance.dart';

import 'home_balance.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var mediQuery = MediaQuery.of(context).size;
    GlobalKey<ScaffoldState> _globalKey = GlobalKey();
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: Container(),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          title: Text(
            'الرئيسية',
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              _globalKey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Balance(),
            SizedBox(
              height: mediQuery.height * .03,
            ),
            homeElements(context, 'رسالة جديدة', () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewMessageForm()));
            }, Icons.message),
            SizedBox(
              height: mediQuery.height * .045,
            ),
            homeElements(context, 'المجموعات', () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GroupsHome()));
            },
                Icons.group),
            SizedBox(
              height: mediQuery.height * .045,
            ),
            homeElements(context, 'شحن رصيدك', () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReChargeBalance()));
            }, Icons.price_change_rounded),
            SizedBox(
              height: mediQuery.height * .045,
            ),
            homeElements(context, 'تسجيل خروج', () {
              print('dcdc');
            }, Icons.logout_outlined),
            SizedBox(
              height: mediQuery.height * .07,
            ),
          ],
        ),
      ),
    );
  }

  Widget homeElements(
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
