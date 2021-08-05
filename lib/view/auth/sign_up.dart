import 'package:flutter/material.dart';
import 'package:sms_sender/constants.dart';
import 'package:sms_sender/view/auth/sign_in.dart';
import 'package:sms_sender/widgets/custom_text_form.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  var keepMeLoggedIn = false;

  String message = "";
  bool isLoading = false;

  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mediQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediQuery.height * .05,
                  ),

                  // Container(
                  //     alignment: Alignment.center,
                  //     child: Image.asset(
                  //       'images/logo2.png',
                  //       width: mediQuery.width * .4,
                  //     )),
                  // SizedBox(
                  //   height: mediQuery.height * .001,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "name",
                      style: TextStyle(
                          fontSize: mediQuery.width * .05,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  CustomTextForm(
                    false,
                    'Please Enter your name',
                    controller: _emailController,
                  ),
                  SizedBox(
                    height: mediQuery.width * .045,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "phone number",
                      style: TextStyle(
                          fontSize: mediQuery.width * .05,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  CustomTextForm(
                    false,
                    'Please Enter phone number',
                    controller: _emailController,
                  ),
                  SizedBox(
                    height: mediQuery.width * .045,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Username",
                      style: TextStyle(
                          fontSize: mediQuery.width * .05,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  CustomTextForm(
                    false,
                    'Please Enter The Email',
                    controller: _emailController,
                  ),
                  SizedBox(
                    height: mediQuery.width * .045,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Password",
                      style: TextStyle(
                          fontSize: mediQuery.width * .05,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  CustomTextForm(
                    true,
                    'Please Enter the password',
                    controller: _passwordController,
                  ),

                  //states == true ? CircularProgressIndicator() : Container(),
                  isLoading == true
                      ? Center(
                          child: Container(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator()),
                        )
                      : Container(),
                  Center(
                      child: Text(
                    "$message",
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  )),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account please ',
                  style: TextStyle(
                    fontSize: mediQuery.width * .042,
                    color: Colors.black45,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        fontSize: mediQuery.width * .05,
                        color: mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: mainColor, shadowColor: Colors.black45),
                  child: Text(
                    'Sign UP',
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
