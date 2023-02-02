import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nicu/screen/maps/map_component/get_markers.dart';
import 'package:nicu/component/text_copied.dart';
import 'package:nicu/main.dart';
import 'package:quickalert/quickalert.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'alert_component.dart';

void addMarker(Map typeMarker, double colorMarker) {
  markers.add(Marker(
    markerId: MarkerId(typeMarker["id"]),
    icon: BitmapDescriptor.defaultMarkerWithHue(colorMarker),
    position: LatLng(typeMarker["lat"], typeMarker["long"]),
    infoWindow: InfoWindow(
      onTap: () {
        QuickAlert.show(
          context: navigatorKey.currentContext!,
          type: QuickAlertType.custom,
          animType: QuickAlertAnimType.slideInDown,
          backgroundColor: Color(0xffFFEAA5),
          widget: widgetAlert(typeMarker),
          customAsset: "asset/Images/b.png",
          barrierColor: Colors.black.withOpacity(.7),
          confirmBtnText: 'Cancel',
        );
      },
      title: typeMarker["name"],
    ),
  ));
}
