import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
        required this.title,
        required this.color,
        required this.onTap,
        this.iconData,
        required this.color1})
      : super(key: key);
  final String title;
  final Color? color;
  final Color? color1;
  final Function() onTap;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                title,
                style: GoogleFonts.amiri(
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                    color:color1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}