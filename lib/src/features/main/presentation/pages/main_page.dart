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
      drawer: const CustomDrawerWidget(),
      // appBar: TransparentAppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       _scaffoldKey.currentState!.openDrawer();
      //     },
      //     icon: Assets.icons.regular.barsSolid.svg(
      //       colorFilter:
      //           ColorFilter.mode(context.theme.primary, BlendMode.srcIn),
      //       width: 24,
      //       height: 24,
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: UIConstants.defaultPadding,
              top: UIConstants.defaultPadding,
              child: CustomOpenDrawerButtonWidget(scaffoldKey: _scaffoldKey),
            ),
            const Center(
                // child:
                // MaplibreMap(
                //   styleString:
                //       "${ApiConstants.mapStyleUrl}?api_key=${ApiConstants.apiKey}",
                //   myLocationEnabled: true,
                //   initialCameraPosition: CameraPosition(
                //     target: _currentPosition != null
                //         ? LatLng(
                //             _currentPosition!.latitude, _currentPosition!.longitude)
                //         : const LatLng(0.0, 0.0),
                //   ),
                //   trackCameraPosition: true,
                //   attributionButtonPosition: AttributionButtonPosition.TopLeft,
                //   annotationOrder: const [],
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
