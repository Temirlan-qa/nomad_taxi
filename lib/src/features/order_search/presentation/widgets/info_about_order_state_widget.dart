import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/accepted_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/progress_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/searching_info_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/waiting_info_state_widget.dart';

class InfoAboutOrderStateWidget extends StatefulWidget {
  const InfoAboutOrderStateWidget({super.key, required this.state});
  final OrderState state;

  @override
  State<InfoAboutOrderStateWidget> createState() =>
      _InfoAboutOrderStateWidgetState();
}

class _InfoAboutOrderStateWidgetState extends State<InfoAboutOrderStateWidget> {
  @override
  Widget build(BuildContext context) {
    switch (widget.state) {
      case OrderState.searching:
        return const SearchingInfoStateWidget();
      case OrderState.accepted:
        return const AcceptedInfoStateWidget();
      case OrderState.waiting:
        return const WaitingInfoStateWidget();
      case OrderState.progress:
        return const ProgressInfoStateWidget();
      default:
        return const Offstage();
    }
  }
}
