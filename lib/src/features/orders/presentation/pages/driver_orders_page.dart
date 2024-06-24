import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/widgets/show_info_bonus_modal_widget.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';
import 'package:nomad_taxi/src/features/orders/presentation/widgets/check_mark_indicator.dart';
import 'package:nomad_taxi/src/features/orders/presentation/widgets/show_order_modal_widget.dart';

import '../../../../core/router/router.dart';
import '../../../detailed_driver_order/presentation/bloc/driver_order_bloc.dart';
import '../widgets/show_address_modal_widget.dart';

class DriverOrdersPage extends StatefulWidget {
  const DriverOrdersPage({super.key});

  @override
  State<DriverOrdersPage> createState() => _DriverOrdersPageState();
}

class _DriverOrdersPageState extends State<DriverOrdersPage> {
  Duration duration = const Duration();

  Timer? _timer;

  @override
  void initState() {
    startTimer();
    super.initState();
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
    final driverOrderBloc = getIt<DriverOrderBloc>();
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop(RouteNames.driverMode)),
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
        child:
            BaseBlocWidget<DriverOrderBloc, DriverOrderEvent, DriverOrderState>(
          bloc: driverOrderBloc,
          starterEvent: const DriverOrderEvent.started(),
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
                List<OrderEntity> orderList =
                    viewModel.ordersList.reversed.toList();
                if (orderList.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.icons.brand.smile.svg(),
                      const Gap(UIConstants.defaultPadding),
                      Text(
                        S.current.noActiveOrdersAtTheMoment,
                        textAlign: TextAlign.center,
                        style: context.theme.textStyles.titleSecondary,
                      ),
                    ],
                  );
                }
                return CheckMarkIndicator(
                  onRefresh: () {
                    bloc.add(const DriverOrderEvent.getOrders());
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.all(UIConstants.defaultPadding),
                    itemCount: orderList.length,
                    separatorBuilder: (ctx, index) {
                      return const Gap(UIConstants.defaultGap1);
                    },
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          showAcceptOrderModal(
                            context: context,
                            orderEntity: orderList[index],
                          );
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
                                      //TODO: add type of orders
                                      // Text(
                                      //   S.current.delivery,
                                      //   style: context.theme.textStyles.bodyMain
                                      //       .copyWith(
                                      //           color: context.theme.blue),
                                      // ),
                                      // const Gap(UIConstants.defaultGap5),

                                      Text(
                                        '${orderList[index].price} 〒',
                                        style:
                                            context.theme.textStyles.extraTitle,
                                      ),
                                    ],
                                  ),
                                  orderList[index].points != null
                                      ? Assets.icons.solid.routeSolid1.svg(
                                          height: 24,
                                          width: 24,
                                          colorFilter: ColorFilter.mode(
                                            context.theme.red,
                                            BlendMode.srcIn,
                                          ),
                                        )
                                      : const Offstage(),
                                ],
                              ),
                              const Gap(UIConstants.defaultGap2),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      orderList[index].startPoint,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: context.theme.textStyles.headLine,
                                    ),
                                  ),
                                  const Gap(UIConstants.defaultGap2),
                                  Assets.icons.brand.arrow1.svg(
                                    height: 18,
                                    width: 18,
                                    colorFilter: ColorFilter.mode(
                                      context.theme.secondary,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const Gap(UIConstants.defaultGap2),
                                  Expanded(
                                    child: Text(
                                      orderList[index].endPoint,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: context.theme.textStyles.headLine,
                                    ),
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
              waiting: () => const SizedBox.shrink(),
              start: () => const SizedBox.shrink(),
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

  void showAcceptOrderModal(
      {required BuildContext context, required OrderEntity orderEntity}) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return CustomAddressModalWidget(order: orderEntity);
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

  _formattedTime({required int timeInSecond}) {
    int sec = timeInSecond % 60;
    int min = (timeInSecond / 60).floor();
    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return "$minute : $second";
  }
}
