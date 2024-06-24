import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/bloc/driver_order_bloc.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/service/injectable/injectable_service.dart';

class CustomOrderButtonsWidget extends StatefulWidget {
  const CustomOrderButtonsWidget({
    super.key,
    required this.labelStyle,
    required this.headLine,
    required this.order,
  });

  final TextStyle labelStyle;
  final TextStyle headLine;

  final OrderEntity order;

  @override
  State<CustomOrderButtonsWidget> createState() =>
      _CustomOrderButtonsWidgetState();
}

class _CustomOrderButtonsWidgetState extends State<CustomOrderButtonsWidget> {
  late DateTime endTime;

  late Timer _timer;

  String? orderStatus;

  int remainingSeconds = 300;

  bool isDisabled = true;

  @override
  void initState() {
    super.initState();
    endTime = DateTime.now().add(Duration(seconds: remainingSeconds));
    _startTimer();
  }

  String _formattedTime() {
    final minutes = remainingSeconds ~/ 60;
    final seconds = remainingSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')} ${S.current.minutes}';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        remainingSeconds = endTime.difference(DateTime.now()).inSeconds;
        if (remainingSeconds <= 0) {
          isDisabled = false;
          _timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final DriverOrderBloc driverOrderBloc = getIt<DriverOrderBloc>();
    return BlocBuilder<DriverOrderBloc, DriverOrderState>(
      bloc: driverOrderBloc,
      builder: (context, state) {
        return state.when(
          initial: () {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomMainButtonWidget(
                  title: S.current.arrived_call_point,
                  onPressed: () {
                    driverOrderBloc.add(DriverOrderEvent.waitingForClient(
                        orderId: widget.order.id));
                  },
                ),
                const Gap(UIConstants.defaultGap1),
                CustomMainButtonWidget(
                  title: S.current.cancel_the_order,
                  onPressed: () {
                    context.pop();
                    driverOrderBloc.add(
                        DriverOrderEvent.cancelOrder(orderId: widget.order.id));
                  },
                  isMain: false,
                  color: context.theme.red,
                ),
              ],
            );
          },
          error: (errorMessage) => const SizedBox.shrink(),
          loaded: (viewModel) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomMainButtonWidget(
                  title: S.current.arrived_call_point,
                  onPressed: () {
                    driverOrderBloc.add(DriverOrderEvent.waitingForClient(
                        orderId: widget.order.id));
                  },
                ),
                const Gap(UIConstants.defaultGap1),
                CustomMainButtonWidget(
                  title: S.current.cancel_the_order,
                  onPressed: () {
                    context.pop();
                    driverOrderBloc.add(
                        DriverOrderEvent.cancelOrder(orderId: widget.order.id));
                  },
                  isMain: false,
                  color: context.theme.red,
                ),
              ],
            );
          },
          waiting: () {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(S.current.can_cancel_via, style: widget.labelStyle),
                const Gap(UIConstants.defaultGap5),
                Text(_formattedTime(),
                    style: widget.headLine.copyWith(color: context.theme.red)),
                const Gap(UIConstants.defaultGap2),
                CustomMainButtonWidget(
                  title: S.current.cancel_the_order,
                  isDisabled: isDisabled,
                  onPressed: () {
                    context.pop();
                    driverOrderBloc.add(
                        DriverOrderEvent.cancelOrder(orderId: widget.order.id));
                  },
                  isMain: false,
                  color: isDisabled ? context.theme.grey : context.theme.red,
                ),
                const Gap(UIConstants.defaultGap1),
                CustomMainButtonWidget(
                  title: S.of(context).startRoute,
                  onPressed: () {
                    driverOrderBloc.add(
                        DriverOrderEvent.startRoute(orderId: widget.order.id));
                  },
                ),
              ],
            );
          },
          start: () {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(S.of(context).routeStarted,
                    style: widget.headLine.copyWith(color: context.theme.red)),
                const Gap(UIConstants.defaultGap2),
                CustomMainButtonWidget(
                  prefixIcon: Assets.icons.regular.circleCheckRegular,
                  iconColor: context.theme.white,
                  title: S.of(context).done,
                  onPressed: () {
                    driverOrderBloc.add(DriverOrderEvent.completeOrder(
                        orderId: widget.order.id));
                    context.push(RoutePaths.orderFinished);
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
