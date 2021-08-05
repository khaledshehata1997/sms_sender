import 'package:flutter/material.dart';
import 'package:sms_sender/constants.dart';
import 'package:sms_sender/widgets/custom_text_form.dart';
import 'package:sms_sender/widgets/spetial_text_field_for_message.dart';
import 'package:sms_sender/widgets/textOnFields.dart';

class NewMessageForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'رسالة جديدة',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                textOnFields(context, 'اسم المرسل', false, Alignment.topRight),
                CustomTextForm(false, (){}),
                SizedBox(height: 15,),
                textOnFields(context, 'رقم الهاتف', false, Alignment.topRight),
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomTextForm(false, (){}),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(Icons.search,color: mainColor,),
                    )
                  ],
                ),
                SizedBox(
                  height:MediaQuery.of(context).size.height*.06,),

                SpetialCustomTextFormForMessage('نص الرسالة',false, (){}),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: mainColor
                    ),
                    child: Text('إرسال',style: TextStyle(
                        fontSize: 18
                    ),))
              ],
            ),
          ),
        ],
      ) ,
    );
  }


}
