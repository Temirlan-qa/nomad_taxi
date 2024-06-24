import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/accepted_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/progress_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/searching_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/waiting_info_state_widget.dart';

import 'error_info_state_widget.dart';

class InfoAboutOrderStateWidget extends StatelessWidget {
  const InfoAboutOrderStateWidget(
      {super.key,
      required this.orderStatus,
      this.errorMessage,
      this.waitingTime});
  final String orderStatus;

  final String? errorMessage;
  final int? waitingTime;

  @override
  Widget build(BuildContext context) {
    switch (orderStatus) {
      case 'searching':
        return const SearchingInfoStateWidget();
      case 'accepeted':
        return AcceptedInfoStateWidget(waitingTime: waitingTime);
      case 'awaiting':
        return const WaitingInfoStateWidget();
      case 'on_route':
        return const ProgressInfoStateWidget();
      case 'error':
        return ErrorInfoStateWidget(errorMessage: errorMessage);
      default:
        return const Offstage();
    }
  }
}
