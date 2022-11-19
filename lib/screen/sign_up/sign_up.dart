import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../component/button.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
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
                        "SIGN UP",
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
                          prefixIcon: Icon(Icons.person),
                          hintText: "Name",
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
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_in_talk_outlined),
                          hintText: "Phone Number",
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
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: 10,
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
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_rounded),
                          hintText: "Password",
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
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      DefaultButton(
                        text: 'SIGN UP',
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
                        "OR SIGN UP WITH",
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
                            "Already a member ? ",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("signIn");
                              },
                              child: Text(
                                "SIGN IN",
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
