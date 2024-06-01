import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_drawer_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_open_drawer_bottom_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Position? _currentPosition;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _getCurrentLocation();
  }

  _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, handle accordingly (e.g., show an alert)
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle accordingly (e.g., show an alert)
      return;
    }

    // If permissions are granted, get the current position
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _scaffoldKey,
      drawer: const CustomDrawerWidget(),
      body: Stack(
        children: [
          const Positioned.fill(
              child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
          )),
          Positioned(
            left: UIConstants.defaultPadding,
            top: UIConstants.defaultPadding,
            child: SafeArea(
                child: CustomOpenDrawerButtonWidget(scaffoldKey: _scaffoldKey)),
          ),
          // Center(
          //   child: MaplibreMap(
          //     styleString: ApiConstants.mapStyle,
          //     myLocationEnabled: true,
          //     initialCameraPosition: CameraPosition(
          //       zoom: 10,
          //       target: _currentPosition != null
          //           ? LatLng(
          //               _currentPosition!.latitude, _currentPosition!.longitude)
          //           : const LatLng(43.238949, 76.889709),
          //     ),
          //     trackCameraPosition: true,
          //     attributionButtonPosition: AttributionButtonPosition.BottomRight,
          //     //annotationOrder: const [],
          //   ),
          // ),
        ],
      ),
    );
  }
}
