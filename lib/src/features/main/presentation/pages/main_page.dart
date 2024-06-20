import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/api_constants.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/all.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/widgets/drawer/drawer_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/drawer_bottom_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/modal_widgets/create_order_modal_widget.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';

import '../widgets/modal_widgets/active_order_modal_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Position? _currentPosition;
  LatLng latLng = const LatLng(43.238949, 76.889709);
  String whereFrom = 'Титова 14';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
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
    setState(
      () {
        _currentPosition = position;
        if (_currentPosition != null) {
          latLng =
              LatLng(_currentPosition!.latitude, _currentPosition!.longitude);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<ProfileBloc, ProfileEvent, ProfileState>(
      bloc: getIt<ProfileBloc>(),
      starterEvent: const ProfileEvent.init(),
      builder: (context, state, bloc) {
        return state.when(
          initial: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          loaded: (viewModel) {
            OrderEntity? order = viewModel.order;
            return Scaffold(
              extendBodyBehindAppBar: true,
              key: _scaffoldKey,
              drawer: DrawerWidget(
                onSwitchMode: () {
                  viewModel.pId == null
                      ? context.pushNamed(RouteNames.driverModeIntro)
                      : context.pushNamed(RouteNames.driverMode);
                },
                isDriverMode: false,
              ),
              body: Stack(
                children: [
                  Center(
                    child: MapLibreMap(
                      styleString: ApiConstants.mapStyle,
                      myLocationEnabled: true,
                      initialCameraPosition: CameraPosition(
                        zoom: 10,
                        target: latLng,
                      ),
                      trackCameraPosition: true,
                    ),
                  ),
                  Positioned(
                    left: UIConstants.defaultPadding,
                    top: UIConstants.defaultPadding,
                    child: SafeArea(
                      child: DrawerButtonWidget(scaffoldKey: _scaffoldKey),
                    ),
                  ),
                  Positioned(
                    left: UIConstants.defaultPadding,
                    right: UIConstants.defaultPadding,
                    bottom: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (order != null) ...[
                          ActiveOrderModalWidget(
                            onTap: () {
                              context.pushNamed(
                                RouteNames.orderSearch,
                                extra: {
                                  "whereFrom": "whereFrom",
                                  "whereTo": 'whereTo',
                                  "price": order.price,
                                },
                              );
                            },
                            addressFrom: order.startPoint,
                            addressTo: order.endPoint,
                          ),
                        ],
                        CreateOrderModalWidget(
                          currentLocation: whereFrom,
                          onTapEditLocation: () {},
                          onTapCreateOrder: () {
                            context.pushNamed(
                              RouteNames.searchAddress,
                              extra: {
                                "whereFrom": whereFrom,
                                "latLng": latLng,
                              },
                            );
                          },
                        ),

                        // CurrentLocationModalWidget(
                        //   onTapSelect: () {},
                        //   currentLocation: '',
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
