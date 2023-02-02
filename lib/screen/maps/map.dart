import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'package:nicu/component/applocal.dart';
import 'package:nicu/screen/maps/map_component/get_markers.dart';
import 'package:nicu/screen/maps/map_component/location_permission.dart';
import 'package:nicu/screen/maps/map_component/notes.dart';
import 'package:provider/provider.dart';

import 'add_current_location_marker.dart';

class Map extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapState();
  }
}

class MapState extends State<Map> {
  refersh() {
    setState(() {});
  }

  Future checkConnection() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    print(result.name);
  }

  Position? currentLocation;
  Future<void> getLatLng() async {
    await Locationpermissiom.getMyPosition();

    currentLocation = await Geolocator.getLastKnownPosition().whenComplete(() {
      setState(() {});
      ;
    });
  }

  Completer<GoogleMapController> _myController = Completer();
  Future<void> _goToPosition() async {
    GoogleMapController controller = await _myController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(currentLocation!.latitude, currentLocation!.longitude),
        zoom: 12,
      ),
    ));
    setState(() {});
    ;
  }

//-------------------------

  @override
  void initState() {
    super.initState();
    getCustomMarker();
    checkConnection();
    getLatLng();
  }

  Set<Marker>? myMarkers;
  Widget buildMap({
    String? markersType,
  }) {
    if (currentLocation != null) {
      if (markersType == "Government Hospitals") {
        addCurrentLocationMarker(currentLocation: currentLocation!);
        getGovernmentHospitalMarkers();
        myMarkers = markers;
      } else if (markersType == "Charity Centers") {
        addCurrentLocationMarker(currentLocation: currentLocation!);
        getCharityCenterMarkers();
        myMarkers = markers;
      } else if (markersType == "Special Centers") {
        addCurrentLocationMarker(currentLocation: currentLocation!);
        getSpecialCenterMarkers();
        myMarkers = markers;
      } else {
        addCurrentLocationMarker(currentLocation: currentLocation!);
        getAllMarkers();
        myMarkers = markers;
      }
    }

    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(currentLocation != null ? currentLocation!.latitude : 30,
            currentLocation != null ? currentLocation!.longitude : 31),
        // زوووم الماب
        zoom: 5,
      ),
      onMapCreated: (GoogleMapController googleMapController) {
        getLatLng();
        _myController.complete(googleMapController);
      },
      markers: myMarkers!,
      zoomControlsEnabled: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityResult>(
      stream: Connectivity().onConnectivityChanged,
      builder: (context, snapshot) {
        return SafeArea(
          child: Scaffold(
              body: snapshot.data == ConnectivityResult.none
                  ? Center(
                      child: Text('${getLang(context, "NIconnection")}'),
                    )
                  : currentLocation != null
                      ? Stack(
                          children: [
                            buildMap(
                              markersType: "All Centers",
                            ),
                            Container(
                              height: 42,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    markerTypeButton(
                                      markerType: "All Centers",
                                    ),
                                    markerTypeButton(
                                      markerType: "Government Hospitals",
                                    ),
                                    markerTypeButton(
                                      markerType: "Charity Centers",
                                    ),
                                    markerTypeButton(
                                      markerType: "Special Centers",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    notes(),
                                    const Spacer(),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 0, 8, 30),
                                        child: FloatingActionButton(
                                          backgroundColor: Colors.redAccent,
                                          onPressed: () {
                                            getLatLng();
                                            _goToPosition();
                                            setState(() {});
                                            ;
                                          },
                                          child: Icon(
                                            Icons.place,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      : Center(
                          child:
                              Text('loading', style: TextStyle(fontSize: 25)))),
        );
      },
    );
  }

  GestureDetector markerTypeButton({required String markerType}) {
    return GestureDetector(
      onTap: () {
        buildMap(
          markersType: markerType,
        );
        setState(() {});
        markers.removeWhere((x) => x != null);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 23,
        constraints: BoxConstraints(minWidth: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.95),
              spreadRadius: .5,
              blurRadius: .5,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Text(
          "$markerType",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
