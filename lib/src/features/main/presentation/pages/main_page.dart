import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/api_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/transparent_app_bar.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/drawer.dart';

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
    _getCurrentLocation();
  }

  _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _currentPosition = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Offline Map
    // final bounds = LatLngBounds(
    //   southwest: const LatLng(40.69, -74.03),
    //   northeast: const LatLng(40.84, -73.86),
    // );
    // final regionDefinition = OfflineRegionDefinition(
    //     bounds: bounds, mapStyleUrl: ApiConstants.mapStyleUrl, minZoom: 6, maxZoom: 14);

    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: TransparentAppBar(
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Assets.icons.regular.barsSolid.svg(
            color: context.theme.black,
            width: 24,
            height: 24,
          ),
        ),
      ),
      body: SizedBox(
        child: Center(
          child: MaplibreMap(
            styleString:
                "${ApiConstants.mapStyleUrl}?api_key=${ApiConstants.apiKey}",
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              target: _currentPosition != null
                  ? LatLng(
                      _currentPosition!.latitude, _currentPosition!.longitude)
                  : const LatLng(0.0, 0.0),
            ),
            trackCameraPosition: true,
            attributionButtonPosition: AttributionButtonPosition.TopLeft,
            annotationOrder: const [],
          ),
        ),
      ),
    );
  }
}
