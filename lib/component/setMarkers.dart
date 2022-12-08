import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Set<Marker> markers = {
  Marker(
    markerId: MarkerId('1'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(30.565890884222636, 31.00324154960695),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بشبين الكوم",
    ),
  ),
  Marker(
    markerId: MarkerId('2'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.68454975832983, 30.95028490014212),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي تلا المركزي",
    ),
  ),
  Marker(
    markerId: MarkerId('3'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.635478259074432, 31.090294810786844),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي بركة السبع",
    ),
  ),
  Marker(
    markerId: MarkerId('4'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(30.427188341216844, 31.04417977238148),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين فرع الباجور",
    ),
  ),
  Marker(
    markerId: MarkerId('5'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.57447605668898, 31.01209122959227),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي شبين الكوم التعليمي",
    ),
  ),
  Marker(
    markerId: MarkerId('6'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.552612178908394, 31.138998129589098),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي قويسنا المركزي",
    ),
  ),
  Marker(
    markerId: MarkerId('7'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.43277976272684, 31.02925135452893),
    infoWindow: InfoWindow(
      title: "حضانات مستشفى الباجور",
    ),
  ),
  Marker(
    markerId: MarkerId('8'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.367190621900548, 30.50598233600393),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي السادات المركزي",
    ),
  ),
  Marker(
    markerId: MarkerId('9'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.471802453750183, 30.927749047034624),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي منوف العام",
    ),
  ),
  Marker(
    markerId: MarkerId('10'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.295877073584915, 30.988961800139478),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي اشمون العام",
    ),
  ),
  Marker(
    markerId: MarkerId('11'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.442403319473, 30.960883806670832),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي سرس الليان المركزي",
    ),
  ),
  Marker(
    markerId: MarkerId('12'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(30.596665257019122, 30.904721547034626),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي الشهداء المركزي",
    ),
  ),
  Marker(
    markerId: MarkerId('13'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(30.118643587397063, 31.320736076168018),
    infoWindow: InfoWindow(
      title: "مركز تبارك للأطفال",
    ),
  ),
  Marker(
    markerId: MarkerId('14'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(30.11845720388082, 31.320442090164715),
    infoWindow: InfoWindow(
      title: "مركز المنارة التخصصى لحديثى الولادة",
    ),
  ),
  Marker(
    markerId: MarkerId('15'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(30.082709549422997, 31.354504329167526),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بمصر الجديدة",
    ),
  ),
  Marker(
    markerId: MarkerId('16'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(30.047870336127698, 31.313576609777417),
    infoWindow: InfoWindow(
      title:
          "مستشفى الجمعية الشرعية للاطفال المبتسرين(فرع الحي السادس القاهرة)",
    ),
  ),
  Marker(
    markerId: MarkerId('17'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(30.136933158179918, 31.367915865832078),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بعين شمس",
    ),
  ),
  Marker(
    markerId: MarkerId('18'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(30.00814523303434, 31.30942515290951),
    infoWindow: InfoWindow(
      title: "مركز الاسراء الطبى للاطفال و الحضانات لحديثى الولادة والمبتسرين",
    ),
  ),
  Marker(
    markerId: MarkerId('19'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(29.984387096528245, 31.284985726932454),
    infoWindow: InfoWindow(
      title: "د. شهيرة لويز - استشارى طب اطفال وحديثى الولادة",
    ),
  ),
  Marker(
    markerId: MarkerId('20'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(29.973987571184374, 31.280541569317133),
    infoWindow: InfoWindow(
      title:
          "د. نشوة حسين العشرى - استشارى طب اطفال وحديثى الولادة والرضاعة الطبيعية",
    ),
  ),
  Marker(
    markerId: MarkerId('21'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(30.123384153949665, 31.260928316343094),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بشبرا الخيمة",
    ),
  ),
  Marker(
    markerId: MarkerId('22'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(30.791830301685003, 30.994424184676273),
    infoWindow: InfoWindow(
      title: "مركز حياة لرعاية حديثى الولادة والمبتسرين",
    ),
  ),
  Marker(
    markerId: MarkerId('23'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(30.82373548353693, 30.814521699999997),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بكفر الزيات",
    ),
  ),
  Marker(
    markerId: MarkerId('24'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(31.11823146484606, 29.792446829592663),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بفرع اسكندرية",
    ),
  ),
  Marker(
    markerId: MarkerId('25'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(31.110881790628284, 30.938188161222953),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين فرع كفر الشيخ",
    ),
  ),
  Marker(
    markerId: MarkerId('26'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(27.179616933391195, 31.18842528824121),
    infoWindow: InfoWindow(
      title: "المركز الطبى التخصصى للاطفال وحديثى الولادة",
    ),
  ),
  Marker(
    markerId: MarkerId('27'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(26.560302184612294, 31.69181475655312),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بفرع نجع مطرود بسوهاج",
    ),
  ),
  Marker(
    markerId: MarkerId('28'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
    position: LatLng(29.969750276822783, 32.54690387415968),
    infoWindow: InfoWindow(
      title: "مستشفى الجمعية الشرعية للاطفال المبتسرين بفرع السويس",
    ),
  ),
  Marker(
    markerId: MarkerId('29'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(24.083501111474934, 32.908320180083436),
    infoWindow: InfoWindow(
      title: "مركز الرحمة للحضانات",
    ),
  ),
  Marker(
    markerId: MarkerId('30'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(31.195138747494525, 29.895463432412086),
    infoWindow: InfoWindow(
      title: "مركز ملك الرحمة للاطفال المبتسرين",
    ),
  ),
  Marker(
    markerId: MarkerId('31'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(24.086609700017853, 32.9078500086466),
    infoWindow: InfoWindow(
      title: "حضانات مستشفيات جامعة أسوان",
    ),
  ),
  Marker(
    markerId: MarkerId('32'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(26.162512978832407, 32.70772883253018),
    infoWindow: InfoWindow(
      title: "مركز بنون للحضانات ورعايه الاطفال حديثي الولادة",
    ),
  ),
  Marker(
    markerId: MarkerId('33'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(26.155217478741488, 32.718445361978084),
    infoWindow: InfoWindow(
      title: "مركز بداية للحضانات",
    ),
  ),
  Marker(
    markerId: MarkerId('34'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(30.969426544162097, 30.956893802970107),
    infoWindow: InfoWindow(
      title: "مركز بداية للحضانات و الرعاية المركزة للأطفال",
    ),
  ),
  Marker(
    markerId: MarkerId('35'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(28.127016904218326, 30.738321432486682),
    infoWindow: InfoWindow(
      title: "مركز بيبي كير للاطفال المبتسرين",
    ),
  ),
  Marker(
    markerId: MarkerId('36'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(28.09259670375789, 30.757193832487538),
    infoWindow: InfoWindow(
      title: "حضانة اطفالنا للأطفال المبتسرين",
    ),
  ),
  Marker(
    markerId: MarkerId('37'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(28.089896612153858, 30.75502454475664),
    infoWindow: InfoWindow(
      title: "حضانة الشروق للاطفال حديثي الولادة",
    ),
  ),
  Marker(
    markerId: MarkerId('38'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(30.00820385623884, 32.49109962691979),
    infoWindow: InfoWindow(
      title: "مستشفي بيبي كير",
    ),
  ),
  Marker(
    markerId: MarkerId('39'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(31.353658949849013, 27.24338100296017),
    infoWindow: InfoWindow(
      title: "المركز التخصصي لطب الاطفال",
    ),
  ),
  Marker(
    markerId: MarkerId('40'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(29.589438341196352, 32.71089990300442),
    infoWindow: InfoWindow(
      title: "حضانات مستشفى رأس سدر المركزي",
    ),
  ),
  Marker(
    markerId: MarkerId('41'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(25.7262152611859, 32.660528697569546),
    infoWindow: InfoWindow(
      title: "مركز المنتصر للاطفال المبتسريين وعلاج الصفرة",
    ),
  ),
  Marker(
    markerId: MarkerId('42'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(25.66443607268849, 32.63135983254056),
    infoWindow: InfoWindow(
      title: "حضانات مستشفى إيزيس التخصصي للنساء والولادة",
    ),
  ),
  Marker(
    markerId: MarkerId('43'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(29.34672962089725, 31.209802932457983),
    infoWindow: InfoWindow(
      title: "مركز حضانات حياتنا",
    ),
  ),
  Marker(
    markerId: MarkerId('44'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: LatLng(29.07989461718878, 31.102586532464436),
    infoWindow: InfoWindow(
      title: "حضانات مستشفي الإيمان للأطفال",
    ),
  ),
};
