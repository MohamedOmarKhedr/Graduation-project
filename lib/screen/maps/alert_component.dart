import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nicu/component/text_copied.dart';

Widget widgetAlert(Map typeCenter) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titleAlert(typeCenter['name']),
      itemAlert('رقم الهاتف: ', typeCenter['number']),
      itemAlert("العنوان: ", typeCenter['address']),
      itemAlert('الموقع: ', typeCenter['location']),
    ],
  );
}

Widget titleAlert(String title) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      constraints: BoxConstraints(minHeight: 10),
      child: Text(
        "${title}",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.visible,
      ),
    ),
  );
}

Widget itemAlert(String key, dynamic value) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 3),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          key,
          style: TextStyle(
            fontSize: 12,
            overflow: TextOverflow.visible,
          ),
        ),
        Expanded(
          child: Container(
              constraints: BoxConstraints(minHeight: 10),
              child: InkWell(
                onLongPress: () {
                  textCopied("$value");
                },
                child: Text(
                  "${value}",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.visible,
                ),
              )),
        )
      ],
    ),
  );
}
