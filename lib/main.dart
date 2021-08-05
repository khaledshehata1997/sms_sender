import 'package:flutter/material.dart';
import 'package:sms_sender/view/auth/sign_in.dart';
import 'package:sms_sender/view/choose/choose.dart';
import 'package:sms_sender/view/home/home_view.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sms sender',
      home: Choose(),
    );
  }
}
