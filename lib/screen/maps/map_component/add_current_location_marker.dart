import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nicu/component/applocal.dart';
import 'package:nicu/main.dart';
import 'package:nicu/screen/maps/map_component/get_markers.dart';



BitmapDescriptor? customMarker;
getCustomMarker() async {
  customMarker = await BitmapDescriptor.fromAssetImage(
    ImageConfiguration.empty,
    'asset/Images/c12.png',
  );
}

void addCurrentLocationMarker({required Position currentLocation}) {
  if (customMarker != null) {
    markers.add(Marker(
        markerId: MarkerId('0'),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        infoWindow: InfoWindow(
          title: '${getLang(navigatorKey.currentContext!, "currentLocation")}',
        ),
        icon: customMarker!));
  }
}
