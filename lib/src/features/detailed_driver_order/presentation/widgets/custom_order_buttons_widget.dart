import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/bloc/driver_order_bloc.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../../orders/presentation/bloc/order_bloc.dart';

class CustomOrderButtonsWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final DriverOrderBloc orderBloc = getIt<DriverOrderBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(S.current.can_cancel_via, style: labelStyle),
        const Gap(UIConstants.defaultGap5),
        Text('5:00 ${S.current.minutes}',
            style: headLine.copyWith(color: context.theme.red)),
        const Gap(UIConstants.defaultGap2),
        CustomMainButtonWidget(
          title: S.current.arrived_call_point,
          onPressed: () {
            context.push(RoutePaths.orderFinished);
          },
        ),
        const Gap(UIConstants.defaultGap1),
        CustomMainButtonWidget(
          title: S.current.cancel_the_order,
          onPressed: () {
            context.pop();
            orderBloc.add(DriverOrderEvent.cancelOrder(orderId: order.id));
          },
          isMain: false,
          color: context.theme.red,
        ),
      ],
    );
  }
}
