import 'package:flutter/material.dart';

class SpetialCustomTextFormForMessage extends StatefulWidget {
  var obScur;
  var validate;
  var controller;
  var hint;
  SpetialCustomTextFormForMessage(var hint, var obScur, var validate ,{var controller}  ){
    this.obScur=obScur;
    this.validate=validate;
    this.controller = controller;
    this.hint=hint;
  }

  @override
  _CustomTextFormState createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<SpetialCustomTextFormForMessage> {
  var count =0;
  @override
  Widget build(BuildContext context) {
    var mediQuery = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Column(
              children: [
                Text('$count : عدد الحروف  '),
                Text('وإذا تخطي 70 حرف يتم حساب رسالتين'),
                count<=70?Text(' عدد الرسائل :  1',textDirection: TextDirection.rtl):

                Text(' عدد الرسائل :  2',textDirection: TextDirection.rtl,),

              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
              child: TextFormField(
                onChanged: (value){
                  setState(() {
                    count =value.length;

                  });
                },
                textDirection: TextDirection.rtl ,
                maxLines: 8,

                  controller: widget.controller,
                  obscureText: widget.obScur,
                  validator: (value){
                    if (value!.isEmpty)
                      return '${widget.validate}';
                  },

                  decoration: InputDecoration(
                   hintText:widget.hint,
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
            ),
          ],
        ) ,
        widget.obScur? Positioned(
            top: mediQuery.height * .025,
            left: mediQuery.width * .83,
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.obScur = !widget.obScur;
                  });
                },
                child: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.black45,
                ))):Container()
      ],
    );
  }
}