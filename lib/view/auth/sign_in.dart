import 'package:flutter/material.dart';
import 'package:sms_sender/constants.dart';
import 'package:sms_sender/view/home/home_view.dart';
import 'package:sms_sender/widgets/custom_text_form.dart';
import 'sign_up.dart';
import 'forget_password.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool keepMeLoggedIn = false;

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
          'Login',
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
                    height: mediQuery.width * .06,
                  ),

                  // Container(
                  //     alignment: Alignment.center,
                  //     child: Image.asset(
                  //       'images/logo2.png',
                  //       width: mediQuery.width * .4,
                  //     )),
                  // SizedBox(
                  //   height: mediQuery.height * .01,
                  // ),
                  Text(
                    'Welcome back please insert your username and password to log in',
                    style: TextStyle(
                      fontSize: mediQuery.width * .047,
                      color: Colors.black45,
                    ),
                  ),
                  SizedBox(
                    height: mediQuery.height * .04,
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
                    height: mediQuery.width * .04,
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
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: mainColor,
                        value: keepMeLoggedIn,
                        onChanged: (value) {
                          setState(() {
                            keepMeLoggedIn = value!;
                          });
                        },
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(color: Colors.black45),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 13, top: 5),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forget Password!",
                        style: TextStyle(
                            fontSize: mediQuery.width * .05,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
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
                    height: 20,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'if you don’t have an account please ',
                  style: TextStyle(
                    fontSize: mediQuery.width * .042,
                    color: Colors.black45,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    'SIGN UP ',
                    style: TextStyle(
                        fontSize: mediQuery.width * .05,
                        color: mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mediQuery.width * .07,
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: mainColor, shadowColor: Colors.black45),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
