import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nicu/main.dart';

import '../../../component/applocal.dart';

Widget notes() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    constraints: BoxConstraints(minHeight: 70, minWidth: 85),
    margin: EdgeInsets.fromLTRB(8, 0, 8, 60),
    padding: EdgeInsets.all(5),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.red[500],
            size: 12,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            '${getLang(navigatorKey.currentContext!, "currentLocation")}',
            style: TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.green[500],
            size: 12,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            '${getLang(navigatorKey.currentContext!, "governmentHospital")}',
            style: TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.yellow[500],
            size: 12,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            '${getLang(navigatorKey.currentContext!, "charityCenter")}',
            style: TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      ),
      const SizedBox(
        height: 3,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.location_on,
            color: Colors.blue[700],
            size: 12,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            '${getLang(navigatorKey.currentContext!, "specialCenter")}',
            style: TextStyle(fontSize: 12, color: Colors.black),
          )
        ],
      )
    ]),
  );
}
