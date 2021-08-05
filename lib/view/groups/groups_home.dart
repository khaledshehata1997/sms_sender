import 'package:flutter/material.dart';

import '../../constants.dart';

class GroupsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text(
          'المجموعات',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: mediQuery.height*.08,),
            Text('يمكنك عمل مجموعة خاصة بك -'),
            SizedBox(
              height: mediQuery.height*.01,),
            Text('تكلفة الرساله في المجموعةالمميزه ضعف الرسالة في المجموعة العاديه -'),
            SizedBox(
              height: mediQuery.height*.05,),
            groupsElements(context, 'مجموعاتي الخاصة', () {
              print('dcdc');
            },
                Icons.person_add_alt_1),
            SizedBox(
              height: mediQuery.height * .045,
            ),
            groupsElements(context, 'مجموعات عادية', () {
              print('dcdc');
            }, Icons.group_sharp),
            SizedBox(
              height: mediQuery.height * .045,
            ),
            groupsElements(context, '(VIP) مجموعات مميزه', () {
              print('dcdc');
            }, Icons.star),
            SizedBox(
              height: mediQuery.height * .08,
            ),
           ElevatedButton(onPressed: (){},
               style: ElevatedButton.styleFrom(
                 primary: mainColor
               ),
               child: Text('إنشاء مجموعة',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
  Widget groupsElements(
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
