import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';

class MapProvider extends ChangeNotifier {
  Position? _currentLocation;
  late Set<Marker> markers;
  set currentLocation(Position? c1) {
    _currentLocation = c1;
    notifyListeners();
  }

  Position? get currentLocation => _currentLocation;
}
