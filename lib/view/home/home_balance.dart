import 'package:flutter/material.dart';

import '../../constants.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediQuery = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 10),
          alignment: Alignment.topCenter,
          margin: EdgeInsets.symmetric(horizontal: 30),
          height: mediQuery.height * .13,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [BoxShadow(spreadRadius: 1, color: mainColor)]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '520',
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                'رصيدك الحالي',
                style: TextStyle(
                    fontSize: 20,
                    color: mainColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(elevation: 3.0, primary: mainColor),
            onPressed: () {},
            child: Text('تحديث'))
      ],
    );
  }
}
