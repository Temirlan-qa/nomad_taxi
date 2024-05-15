import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/api_constants.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/transparent_app_bar.dart';
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _scaffoldKey,
      drawer: const CustomDrawerWidget(),
      appBar: TransparentAppBar(
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Assets.icons.regular.barsSolid.svg(
            colorFilter:
                ColorFilter.mode(context.theme.primary, BlendMode.srcIn),
            width: 24,
            height: 24,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: UIConstants.defaultPadding,
            top: UIConstants.defaultPadding,
            child: CustomOpenDrawerButtonWidget(scaffoldKey: _scaffoldKey),
          ),
          Center(
            child: MaplibreMap(
              styleString: ApiConstants.mapStyle,
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                zoom: 10,
                target: _currentPosition != null
                    ? LatLng(
                        _currentPosition!.latitude, _currentPosition!.longitude)
                    : const LatLng(43.238949, 76.889709),
              ),
              trackCameraPosition: true,
              attributionButtonPosition: AttributionButtonPosition.BottomRight,
              //annotationOrder: const [],
            ),
          ),
        ],
      ),
    );
  }
}
