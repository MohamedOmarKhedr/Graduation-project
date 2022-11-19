import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Chat extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatState();
  }
}
class ChatState extends State<Chat>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //------------------- تصميم ال app bar-----------------


          Container(
            color:Theme.of(context).secondaryHeaderColor,
            margin: EdgeInsets.only(bottom: 10),
            height: 60,
            child: Row(
              children: [
                Container(margin: EdgeInsets.only(left: 5),alignment: Alignment.centerLeft,
                  child: InkWell(child: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.white,),
                    onTap: (){Navigator.pop(context);},),),
                SizedBox(width: 10,),
                Container(
                  margin: EdgeInsets.only(top: 10,bottom: 10),
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("Images/b.jfif"),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(child: Text("Doctor Name 1",
                  style:TextStyle(fontSize: 20,color: Colors.white),
                  overflow: TextOverflow.ellipsis,)),
                SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon: Icon(Icons.call_outlined,color:Colors.white,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined,color: Colors.white,)),
              ],
            ),
          ),

          //------------------- نهاية ال app bar --------------------------------

          //------------------------------- الرسائل ---------------------------

          Expanded(child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //------------------------------- رسالة من المستخدم ---------------------------

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onLongPress: (){
                      Clipboard.setData(ClipboardData(text: "mnlkgtf kmnl;bj bpis; lkjnvi;olds  "));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Text copied"),)
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo[100],
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                      ),
                      child: Text("mnlkgtf kmnl;bj bpis; lkjnvi;olds  ",
                        style:TextStyle(fontSize: 15,color:Theme.of(context).secondaryHeaderColor) ,
                        overflow: TextOverflow.visible,),
                      constraints: BoxConstraints(
                        minHeight: 40,
                        maxWidth: 300,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                      padding: EdgeInsets.all(10),
                    ),
                  )
                ],

              ),


              //----------------------------------------------------

              //-------------------الوقت اسفل رسالة المستخدم ------------

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom:5,left: 5),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color:Theme.of(context).primaryColor,
                        border: Border.all(color: Colors.black12,)
                    ),
                    child: Text("20:18 AM",style: TextStyle(fontSize: 10),),
                  ),
                ],
              ),

              //------------------------------- رسالة من الدكتور ---------------------------

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onLongPress: (){
                      Clipboard.setData(ClipboardData(text: "mnlkgtf kmnl;bj bpis; lkjnvi;olds lm;vo niopnjo'ev qepfmnp mnprmfp  piomprofm mpormpo"));
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Text copied"),)
                      );
                    },
                    child:Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo[400],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
                      ),
                      child: Text("mnlkgtf kmnl;bj bpis; lkjnvi;olds lm;vo niopnjo'ev qepfmnp mnprmfp  piomprofm mpormpo ",
                        style:TextStyle(fontSize: 15,color: Colors.white) ,
                        overflow: TextOverflow.visible,),
                      constraints: BoxConstraints(
                        minHeight: 40,
                        maxWidth: 300,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                ],

              ),


              //----------------------------------------------------------


              //-------------------الوقت اسفل رسالة الدكتور ------------

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom:5,right: 5),
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        border: Border.all(color: Colors.black12,)
                    ),
                    child: Text("20:18 AM",style:TextStyle(fontSize: 10)),
                  ),
                ],
              ),


              //------------------------------------------------------------------------







            ],
          )),

          //---------------------------انتهاء دزاين الرسائل -------------------------



          //------------------------ تصميم مكان ارسال الرسائل -------------------------


          Container(
            margin: EdgeInsets.all(5),
            constraints: BoxConstraints(
              minHeight:20,
            ),
            child: Row(
              children: [
                Expanded(child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 6,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: "Type your message ...",
                    hintStyle: TextStyle(fontSize: 12,),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                      gapPadding:2 ,
                    ) ,
                    filled: true,
                    fillColor: Colors.indigo[100],
                  ),
                ),),

                IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice_outlined,color: Colors.grey,),),

                IconButton(onPressed: (){}, icon: Icon(Icons.image_outlined,color: Colors.grey,),),

                IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.grey,),),
              ],
            ),
          )



        ],
      ),

    );
  }
}