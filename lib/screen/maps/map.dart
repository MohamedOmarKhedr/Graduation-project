import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'package:nicu/component/setMarkers.dart';
import 'package:nicu/component/applocal.dart';

class Map extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MapState();
  }
}

class MapState extends State<Map> {
  Set<Marker> myMarkers = markers;

  Future checkConnection() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    print(result.name);
  }

  static Future getPosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ;
    }
    LocationPermission per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
    }
  }

//-------------------------

  static Position? c1;

  Future<Position?> getLatLng() async {
    c1 = await Geolocator.getCurrentPosition();
    print(c1);

    return c1;
  }

  Completer<GoogleMapController> _myController = Completer();
  Future<void> _goToPosition() async {
    if (c1 != null) {
      setState(() {
        myMarkers.add(Marker(
          markerId: MarkerId('0'),
          position: LatLng(c1!.latitude, c1!.longitude),
          infoWindow: InfoWindow(
            title: '${getLang(context, "currentLocation")}',
          ),
        ));
      });
      final GoogleMapController controller = await _myController.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(c1!.latitude, c1!.longitude),
          zoom: 12,
        ),
      ));
    }
  }

  Widget buildMap() {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(c1?.latitude ?? 30, c1?.longitude ?? 31),
        zoom: 12,
      ),
      onMapCreated: (GoogleMapController googleMapController) {
        getLatLng();
        _myController.complete(googleMapController);
      },
      markers: myMarkers,
      zoomControlsEnabled: false,
    );
  }

  @override
  void initState() {
    super.initState();
    getPosition();
    checkConnection();
    getLatLng();
    _goToPosition();
    buildMap();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityResult>(
      stream: Connectivity().onConnectivityChanged,
      builder: (context, snapshot) {
        return Scaffold(
          body: snapshot.data == ConnectivityResult.none
              ? Center(
                  child: Text('${getLang(context, "NIconnection")}'),
                )
              : Stack(
                  children: [
                    buildMap(),
                    Container(
                      alignment: Alignment.topCenter,
                      child: SvgPicture.asset(
                        "asset/Images/b.svg",
                        height: 90,
                        width: 60,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              constraints:
                                  BoxConstraints(minHeight: 70, minWidth: 85),
                              margin: EdgeInsets.fromLTRB(8, 0, 8, 30),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          '${getLang(context, "currentLocation")}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          '${getLang(context, "governmentHospital")}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          '${getLang(context, "charityCenter")}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                          '${getLang(context, "specialCenter")}',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black),
                                        )
                                      ],
                                    )
                                  ]),
                            ),
                            const Spacer(),
                            Container(
                                margin: const EdgeInsets.fromLTRB(8, 0, 8, 30),
                                child: FloatingActionButton(
                                  backgroundColor: Colors.redAccent,
                                  onPressed: () {
                                    setState(() {
                                      if (c1 != null) {
                                        _goToPosition();
                                      }
                                    });
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
                ),
        );
      },
    );
  }
}
