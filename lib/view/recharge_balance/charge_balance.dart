import 'package:flutter/material.dart';
import 'package:sms_sender/widgets/custom_text_form.dart';
import 'package:sms_sender/widgets/spetial_text_field_for_message.dart';
import 'package:sms_sender/widgets/textOnFields.dart';

import '../../constants.dart';

class ReChargeBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text(
          'شحن الرصيد',
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
                SizedBox(height: 20,),
                Text('- يتم ارسال هذه البيانات علي البريد الالكتروني وبعدها يتم التواصل معك وشحن رصيدك. ',
                textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 15),
                ),

                SizedBox(height: 20,),
                textOnFields(context, 'الاسم', false, Alignment.topRight),
                CustomTextForm(false, (){}),
                SizedBox(height: 15,),
                textOnFields(context, 'رقم الهاتف', false, Alignment.topRight),
                CustomTextForm(false, (){}),
                SizedBox(
                  height:MediaQuery.of(context).size.height*.06,),

                emailText(),
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
  Widget emailText(){
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
      child: TextFormField(
          onChanged: (value){
          },
          textDirection: TextDirection.rtl ,
          maxLines: 6,
          obscureText:false,
          validator: (value){
            if (value!.isEmpty)
            return'';
          },
          decoration: InputDecoration(
            hintText:'اكتب ماتريد',
            errorStyle: TextStyle(
                fontSize:15
            ),
            // contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            contentPadding: EdgeInsets.only(left: 15 , right:15 , top: 8 , bottom: 8),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    width: 1,
                    style:BorderStyle.values[1],
                    color: Colors.black45
                )
            ),
            errorBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    width: 3,
                    style:BorderStyle.values[1],
                    color: Colors.black45
                )
            ),

            focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    color: Colors.black45
                )
            ),

          )
      ),
    );
  }
}
