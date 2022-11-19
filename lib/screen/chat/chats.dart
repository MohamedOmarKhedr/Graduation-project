import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Chats extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatsState();
  }
}
class ChatsState extends State<Chats>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [


          //--------------- محتوي ال App Bar --------------------
          Container(
            height: 80,
            width: double.infinity,
            color:Theme.of(context).secondaryHeaderColor,
            padding: EdgeInsets.only(top: 10,bottom: 10,right: 15,left: 5),
            child: Row(
              children: [
                Expanded(flex: 1,
                  child: Container(margin: EdgeInsets.only(left: 5),alignment: Alignment.centerLeft,
                    child: InkWell(child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
                      onTap: (){Navigator.pop(context);},),),),

                Expanded(flex: 9,
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search_outlined,color: Colors.white,),
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 15,color: Colors.white),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ) ,
                      filled: true,
                      fillColor: Colors.indigo[200],

                    ),
                  ),),


              ],
            ),
          ),

          //--------------------------------------------------------

          Center(child: Container(margin:EdgeInsets.symmetric(vertical: 20),
            child: Text("CHATS",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color:Theme.of(context).secondaryHeaderColor),),),
          ),


          //-------------------- محتوي ال chats ---------------------

          Expanded(child: SingleChildScrollView(
            child: Container(
              child: Column(children: [

                //-----------------لشات يكون المستخدم صاحب اخر رسالة -----------------
                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------


                //-----------------لشات الدكتور صاحب اخر رسالة -----------------
                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 2",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            overflow: TextOverflow.ellipsis,
                          ),)
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------

                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------


                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------


                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------

                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------


                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------

                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------
                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------

                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------

                Container(
                  child: Row(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20,top: 10,bottom: 10),
                      height: 35,
                      width: 35,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("Images/b.jfif"),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(flex:5,child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Doctor Name 1",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900,color: Colors.black),)),
                        Container(margin: EdgeInsets.only(left:10),
                          width: double.infinity,
                          child: Row(children: [
                            Text("You:",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                            ),
                            SizedBox(width: 3,),
                            Expanded(child: Text("How are you? mmmmmmm mmmmmm mmmmmm bbb bbbbbbbbb mmmmmmmmmmmmm",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                              overflow: TextOverflow.ellipsis,
                            ),)
                          ],),
                        ),
                      ],),),
                    Expanded(flex:1,child: Text("19:20 AM",
                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,color: Colors.black38),
                    ),)
                  ],),
                ),

                Container(margin:EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child: Divider(color: Colors.black38,height: 1),),


                //------------------------------------------------------


                //-------------------------------------------------------------------
                //-----------نهاية الchats ---------------


              ],
              ),
            ),
          ),)
        ],
      ),

    );
  }
}