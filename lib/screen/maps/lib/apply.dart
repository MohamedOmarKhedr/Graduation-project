import 'dart:math';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'button.dart';
import 'color.dart';

class apply extends StatefulWidget {
  apply({Key? key,  }) : super(key: key);
  @override
  State<apply> createState() => _applyState();
}

class _applyState extends State<apply> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String? childrenName;
  final TextEditingController? _birthday = TextEditingController();
  String? weight;
  int _value = 1;
  String? name;
  String? email;
  String? image;
  String? phone;
  String? user;


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAE3D1),
      appBar: AppBar(
        backgroundColor: Color(0xffEAE3D1),
        elevation: 0,
         title: Text('Back',style: TextStyle(color: Colors.blue[900] ,fontWeight: FontWeight.bold ,fontSize: 22.0 ),),
        leading: IconButton(
          onPressed: (){},
          icon:Icon(Icons.arrow_back_ios_new ,color: Colors.blue[900],),
        ),

      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft:Radius.circular( 20.0) ,topRight:Radius.circular( 20.0) ),
           image: DecorationImage(
            image: AssetImage('asset/Images/b.png'),// background
            opacity: 0.3 ,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 70.0),
                      transform: Matrix4.rotationZ(-9 * pi / 180)
                        ..translate(-10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Color(0xffEAE3D1),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 12,
                            color: Colors.black26,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child:   Text(
                        'NICU',
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 30,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                    Text('Welcome..' ,
                        style:  TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[900])),
                    const SizedBox(
                      height: 15.0,
                    ),
                    buildTextFormField(
                        hint: 'Name' ,
                        validate: () => (val) {
                          if (val!.isEmpty) {
                            return "ChildrenName is empty" ;
                          }
                          return null;
                        },
                        onSave: () => (val) {
                          setState(() {
                            childrenName = val;
                          });
                        },
                        onTap: () {},
                        label: 'Children Name' ,
                        sIcon: const Icon(Icons.done)),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildTextFormField(
                        hint: 'Phone' ,
                        validate: () => (val) {
                          if (val!.isEmpty) {
                            return "Phone is empty" ;
                          }
                          return null;
                        },
                        onSave: () => (val) {
                          setState(() {
                            phone = val;
                          });
                        },
                        onTap: () {},
                        label: 'Phone' ,
                        sIcon: const Icon(Icons.done)),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildTextFormField(
                        hint: 'Weight' ,
                        type: TextInputType.number,
                        validate: () => (val) {
                          if (val!.isEmpty) {
                            return "Weight is Empty " ;
                          }
                          return null;
                        },
                        onSave: () => (val) {
                          setState(() {
                            weight = val;
                          });
                        },
                        onTap: () => () {},
                        label: 'Weight' ,
                        sIcon: const Icon(Icons.done)),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          // width: 120,
                          child: TextFormField(
                            enabled: false,
                            controller: _birthday,
                            style: GoogleFonts.arimo(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              labelText: "Select Date" ,
                              labelStyle: GoogleFonts.arimo(
                                fontSize: 20,
                                color: Colors.grey[700],
                              ),
                              // hintText: hint,
                              hintStyle: GoogleFonts.arimo(
                                fontSize: 19,
                                color: Colors.grey[700],
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:   BorderSide( color:Colors.indigo.shade300, width: 1.2)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:   BorderSide( color:Colors.indigo.shade300, width: 1.2)),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:   BorderSide( color:Colors.indigo.shade300, width: 1.2),
                              ),
                              filled: false,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2020),
                                lastDate: DateTime(2222));
                            if (pickedDate != null) {
                              setState(() {
                                _birthday?.text =
                                    DateFormat('yyyy-mm-dd').format(pickedDate);
                              });
                            }
                          },
                          icon: const Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Radio(
                            activeColor:Colors.indigo[900],
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = int.parse(value.toString());
                              });
                            }),
                        Text(
                          "Male" ,
                          style: GoogleFonts.arimo(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade300,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Radio(
                            value: 2,
                            activeColor: Colors.indigo[900],
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = int.parse(value.toString());
                              });
                            }),
                        Text(
                          "Female" ,
                          style: GoogleFonts.arimo(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade300,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MyButton(
                        title: 'Apply',
                        color: Colors.indigo[900],
                        onTap: () {
                          _submit();
                        },
                        color1: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField({
    required String hint,
    required String label,
    required Widget sIcon,
    TextInputType? type,
    required Function() validate,
    required Function() onSave,
    required Function() onTap,
    TextEditingController? controller,
  }) {
    return TextFormField(
      keyboardType: type,
      controller: controller,
      validator: validate(),
      onSaved: onSave(),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.arimo(
          fontSize: 20,
          color: Colors.grey[700],
        ),
        hintText: hint,
        hintStyle: GoogleFonts.arimo(
          fontSize: 19,
          color: Colors.grey[700],
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:   BorderSide( color:Colors.indigo.shade300, width: 1.2)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:   BorderSide( color:Colors.indigo.shade300, width: 1.2)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:   BorderSide( color:Colors.indigo.shade300, width: 1.2),
        ),
        filled: false,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          onPressed: onTap,
          icon: sIcon,
        ),
      ),
    );
  }
  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pop();
    } else {}
  }

}
