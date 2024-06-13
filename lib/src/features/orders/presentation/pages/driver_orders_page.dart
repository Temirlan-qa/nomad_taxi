import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/widgets/show_info_bonus_modal_widget.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';
import 'package:nomad_taxi/src/features/orders/presentation/bloc/order_bloc.dart';
import 'package:nomad_taxi/src/features/orders/presentation/widgets/check_mark_indicator.dart';
import 'package:nomad_taxi/src/features/orders/presentation/widgets/show_order_modal_widget.dart';

class DriverOrdersPage extends StatefulWidget {
  const DriverOrdersPage({super.key});

  @override
  State<DriverOrdersPage> createState() => _DriverOrdersPageState();
}

class _DriverOrdersPageState extends State<DriverOrdersPage> {
  Duration duration = const Duration();

  Timer? _timer;

  final orderBloc = getIt<OrderBloc>();

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _addTime(),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String time = _formattedTime(timeInSecond: duration.inSeconds);
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop()),
        actions: [
          Assets.icons.solid.clockSolid.svg(
            height: 18,
            width: 18,
            colorFilter:
                ColorFilter.mode(context.theme.secondary, BlendMode.srcIn),
          ),
          const Gap(UIConstants.defaultGap7),
          Text(
            '${S.current.on_line} $time',
            style: context.theme.textStyles.titleTag
                .copyWith(color: context.theme.secondary),
          ),
          const Gap(UIConstants.defaultGap3),
        ],
      ),
      body: SafeArea(
        child: BaseBlocWidget<OrderBloc, OrderEvent, OrderState>(
          bloc: orderBloc,
          starterEvent: const OrderEvent.started(),
          builder: (context, state, bloc) {
            return state.when(
              initial: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              error: (error) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.brand.smile.svg(),
                  const Gap(UIConstants.defaultPadding),
                  Text(
                    error,
                    textAlign: TextAlign.center,
                    style: context.theme.textStyles.titleSecondary,
                  ),
                ],
              ),
              loaded: (viewModel) {
                List<OrderEntity> orderEntity = viewModel.ordersList;

                return CheckMarkIndicator(
                  onRefresh: () {
                    bloc.add(const OrderEvent.getOrders());
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.all(UIConstants.defaultPadding),
                    itemCount: orderEntity.length,
                    separatorBuilder: (ctx, index) {
                      return const Gap(UIConstants.defaultGap1);
                    },
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          context.push(RoutePaths.order);
                        },
                        borderRadius:
                            BorderRadius.circular(UIConstants.defaultRadius),
                        child: Ink(
                          padding:
                              const EdgeInsets.all(UIConstants.defaultPadding),
                          decoration: BoxDecoration(
                              color: context.theme.background,
                              borderRadius: BorderRadius.circular(
                                  UIConstants.defaultRadius),
                              border: Border.all(color: context.theme.stroke)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(S.current.delivery,
                                          style: context
                                              .theme.textStyles.bodyMain
                                              .copyWith(
                                                  color: context.theme.blue)),
                                      const Gap(UIConstants.defaultGap5),
                                      Text('${orderEntity[index].price} 〒',
                                          style: context
                                              .theme.textStyles.extraTitle),
                                    ],
                                  ),
                                  Assets.icons.solid.routeSolid1.svg(
                                      height: 24,
                                      width: 24,
                                      colorFilter: ColorFilter.mode(
                                          context.theme.red, BlendMode.srcIn)),
                                ],
                              ),
                              const Gap(UIConstants.defaultGap2),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text('Типография Konica',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            context.theme.textStyles.headLine),
                                  ),
                                  const Gap(UIConstants.defaultGap2),
                                  Assets.icons.brand.arrow1.svg(
                                      height: 18,
                                      width: 18,
                                      colorFilter: ColorFilter.mode(
                                          context.theme.secondary,
                                          BlendMode.srcIn)),
                                  const Gap(UIConstants.defaultGap2),
                                  Expanded(
                                    child: Text('Ниточкина 6а',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            context.theme.textStyles.headLine),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void showOrderModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomOrderModalWidget();
      },
    );
  }

  void showAddressModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomOrderModalWidget();
      },
    );
  }

  void showInfoBonusModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomInfoBonusModalWidget();
      },
    );
  }

  void _addTime() {
    const addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        _timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  _formattedTime({required int timeInSecond}) {
    int sec = timeInSecond % 60;
    int min = (timeInSecond / 60).floor();
    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return "$minute : $second";
  }
}
