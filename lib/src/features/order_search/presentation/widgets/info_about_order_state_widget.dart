import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/accepted_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/progress_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/searching_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/waiting_info_state_widget.dart';

import 'error_info_state_widget.dart';

class InfoAboutOrderStateWidget extends StatelessWidget {
  const InfoAboutOrderStateWidget(
      {super.key, required this.state, this.errorMessage});
  final OrderStateEnum state;

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case OrderStateEnum.searching:
        return const SearchingInfoStateWidget();
      case OrderStateEnum.accepted:
        return const AcceptedInfoStateWidget();
      case OrderStateEnum.waiting:
        return const WaitingInfoStateWidget();
      case OrderStateEnum.progress:
        return const ProgressInfoStateWidget();
      case OrderStateEnum.error:
        return ErrorInfoStateWidget(errorMessage: errorMessage);
      default:
        return const Offstage();
    }
  }
}
