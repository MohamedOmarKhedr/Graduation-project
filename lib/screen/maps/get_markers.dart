import 'dart:collection';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nicu/main.dart';
import 'package:nicu/screen/maps/add_marker.dart';
import 'package:quickalert/quickalert.dart';

Set<Marker> markers = {};
Map? data;

Future<Map<String, dynamic>> getData() async {
  final String response = await rootBundle
      .loadString('asset/dataCenters/Project data(baby centers).json');
  final Map<String, dynamic> data = await json.decode(response);
  return data;
}

Future<void> getMarkers() async {
  var data = await getData();
  int gLength = data["governmentHospital"].length;
  int cLength = data["charityCenter"].length;
  int sLength = data["specialCenter"].length;
  for (int i = 0; i < gLength + cLength + sLength; i++) {
    if (i < gLength) {
      addMarker(data["governmentHospital"][i], BitmapDescriptor.hueGreen);
    } else if (i >= gLength && i < gLength + cLength) {
      int j = i - gLength;
      addMarker(data["charityCenter"][j], BitmapDescriptor.hueYellow);
    } else {
      int k = i - gLength - cLength;
      addMarker(data["specialCenter"][k], BitmapDescriptor.hueBlue);
    }
  }
}
