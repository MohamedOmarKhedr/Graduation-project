import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nicu/screen/forget_password_screen/forget_password.dart';

import '../../component/button.dart';

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 20),
          height: double.infinity,
          width: double.infinity,
          child: SvgPicture.asset(
            "asset/Images/b.svg",
            width: 200,
            height: 170,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 200),
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(120))),

            //================== محتوي الصفحة =================

            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).secondaryHeaderColor),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        obscureText: true,
                        scrollPadding: EdgeInsets.all(5),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_rounded),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgetBassword()));
                        },
                        child: Container(
                          height: 20,
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: Text("Forgot password?"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DefaultButton(
                        text: 'LOGIN',
                        textColor: Theme.of(context).backgroundColor,
                        backGroundButton:
                            Theme.of(context).secondaryHeaderColor,
                        function: () {
                          Navigator.of(context).pushNamed("signUp");
                        },
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "OR SIGN IN WITH ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).secondaryHeaderColor),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: GestureDetector(
                              onTap: () {
                                print("gmail");
                              },
                              child: Image.asset(
                                'asset/Images/2.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'asset/Images/1.svg.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                'asset/Images/3.webp',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you create new account? ",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("signUp");
                              },
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    fontSize: 15,
                                    color:
                                        Theme.of(context).secondaryHeaderColor),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ],
    ));
  }
}
