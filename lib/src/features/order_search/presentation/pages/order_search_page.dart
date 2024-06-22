import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_container_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/custom_order_price_text_field_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/info_about_order_state_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/show_detailes_modal_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/show_thank_modal_widget.dart';
import 'package:nomad_taxi/src/features/orders/presentation/bloc/order_bloc.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc_widget.dart';
import '../../../../core/service/injectable/injectable_service.dart';

class OrderSearchPage extends StatefulWidget {
  const OrderSearchPage({
    super.key,
    required this.price,
    required this.whereFrom,
    required this.whereTo,
  });

  final int price;
  final String whereTo;
  final String whereFrom;

  @override
  State<OrderSearchPage> createState() => _OrderSearchPageState();
}

class _OrderSearchPageState extends State<OrderSearchPage> {
  final TextEditingController priceController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool switchState = false;
  OrderStateEnum orderState = OrderStateEnum.accepted;

  late int orderPrice;

  final String carNumber = '987-AIB';
  final String carModel = 'Зеленый Volswagen Polo';
  final String carData = 'Зеленый Volswagen Polo, 987-AIB';
  final String driverPhone = '+7 (705) 111-11-11';
  final String driverName = "Tima";

  @override
  void initState() {
    super.initState();
    orderPrice = widget.price;
  }

  @override
  void dispose() {
    priceController.dispose();
    super.dispose();
  }

  void showInfoModal({
    required BuildContext context,
    required OrderStateEnum imState,
    required int imPrice,
    required String imAddressFrom,
    required String imAddressTo,
    String? imCarData,
    String? imDriverName,
    String? imDriverPhone,
  }) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          snap: true,
          minChildSize: 0.5,
          initialChildSize: 0.6,
          maxChildSize: 1,
          builder: (context, scrollController) {
            return CustomDetailedInfoModalWidget(
              scrollController: scrollController,
              state: imState,
              price: imPrice,
              addressFrom: imAddressFrom,
              addressTo: imAddressTo,
              carData: imCarData ?? '',
              driverName: imDriverName ?? '',
              driverPhone: imDriverPhone ?? '',
              onTapCallToDriver: () {},
              onTapClose: () {
                context.pop();
              },
            );
          },
        );
      },
    );
  }

  void showThankModal(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (context) {
        return const CustomThankModalWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final secondary = context.theme.secondary;

    return BaseBlocWidget<OrderBloc, OrderEvent, OrderState>(
      bloc: getIt<OrderBloc>(),
      starterEvent: const OrderEvent.started(),
      builder: (context, state, bloc) {
        return Scaffold(
          body: SafeArea(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(UIConstants.defaultPadding),
                child: state.when(
                  error: (error) {
                    return InfoAboutOrderStateWidget(
                      state: OrderStateEnum.error,
                      errorMessage: error,
                    );
                  },
                  initial: () {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const InfoAboutOrderStateWidget(
                          state: OrderStateEnum.searching,
                        ),
                        const SizedBox(height: 200),
                        CustomOrderPriceTextFieldWidget(
                            controller: priceController,
                            orderPrice: orderPrice,
                            onDecrease: orderPrice == 800
                                ? null
                                : () {
                                    setState(() {
                                      orderPrice >= 800 ? orderPrice -= 100 : 0;
                                      priceController.text = '$orderPrice ₸';
                                    });
                                  },
                            onIncrease: () {
                              setState(() {
                                orderPrice += 100;
                                priceController.text = '$orderPrice ₸';
                              });
                            }),
                        const SizedBox(height: 10),
                        CustomMainButtonWidget(
                          title: S.current.order_details,
                          isMain: false,
                          color: context.theme.blue,
                          onPressed: () {
                            showInfoModal(
                              context: context,
                              imState: OrderStateEnum.searching,
                              imPrice: orderPrice,
                              imAddressFrom: widget.whereTo,
                              imAddressTo: widget.whereFrom,
                            );
                            // showThankModal(context);
                          },
                        ),
                        CustomMainButtonWidget(
                          title: S.current.cancel_the_order,
                          isMain: false,
                          color: context.theme.red,
                          onPressed: () {
                            context.pop();
                          },
                        ),
                      ],
                    );
                  },
                  loaded: (OrderViewModel viewModel) {
                    final orderAccepted = viewModel.orderAccepted;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        InfoAboutOrderStateWidget(
                          state: OrderStateEnum.accepted,
                          waitingTime: orderAccepted?.waitingTime,
                        ),
                        const Spacer(),
                        AnimatedCrossFade(
                          duration: Durations.medium1,
                          crossFadeState: orderState == OrderStateEnum.searching
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                          firstChild: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    UIConstants.defaultPadding,
                                    0,
                                    0,
                                    UIConstants.defaultGap1),
                                child: Text(
                                  S.current.change_price,
                                  style: bodyMain.copyWith(color: secondary),
                                ),
                              ),
                              CustomOrderPriceTextFieldWidget(
                                  controller: priceController),
                            ],
                          ),
                          secondChild: CustomContainerWidget(
                              child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(S.current.car,
                                      style:
                                          bodyMain.copyWith(color: secondary)),
                                  const Gap(UIConstants.defaultGap1),
                                  Text(
                                    carModel,
                                    style:
                                        context.theme.textStyles.titleSecondary,
                                  ),
                                  const Gap(UIConstants.defaultGap1),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 8, 12, 8),
                                    decoration: BoxDecoration(
                                      color: context.theme.primary,
                                      borderRadius: BorderRadius.circular(
                                        UIConstants.defaultGap1,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        carNumber,
                                        style: context.theme.textStyles.headLine
                                            .copyWith(
                                          color: context.theme.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                        ),
                        const Gap(UIConstants.defaultGap1),
                        Row(
                          children: [
                            Expanded(
                              flex: orderState == OrderStateEnum.accepted ||
                                      orderState == OrderStateEnum.waiting
                                  ? 1
                                  : 0,
                              child: AnimatedCrossFade(
                                duration: Durations.medium1,
                                firstChild: CustomMainButtonWidget(
                                  title: S.current.call,
                                  onPressed: () {
                                    // context.pop();
                                  },
                                  color: context.theme.green,
                                  iconColor: context.theme.green,
                                  prefixIcon: Assets.icons.solid.phoneSolid,
                                  isMain: false,
                                ),
                                secondChild: const Offstage(),
                                crossFadeState:
                                    orderState == OrderStateEnum.accepted ||
                                            orderState == OrderStateEnum.waiting
                                        ? CrossFadeState.showFirst
                                        : CrossFadeState.showSecond,
                              ),
                            ),
                            Gap(
                              orderState == OrderStateEnum.accepted ||
                                      orderState == OrderStateEnum.waiting
                                  ? UIConstants.defaultGap1
                                  : 0,
                            ),
                            Expanded(
                              child: CustomMainButtonWidget(
                                title: S.current.order_details,
                                isMain: false,
                                color: context.theme.blue,
                                onPressed: () {
                                  showInfoModal(
                                    context: context,
                                    imState: orderState,
                                    imPrice: widget.price,
                                    imAddressFrom: widget.whereTo,
                                    imAddressTo: widget.whereFrom,
                                    imCarData: carData,
                                    imDriverName: driverName,
                                    imDriverPhone: driverPhone,
                                  );
                                  // showThankModal(context);
                                },
                              ),
                            )
                          ],
                        ),
                        AnimatedCrossFade(
                          firstChild: Padding(
                            padding: const EdgeInsets.only(
                                top: UIConstants.defaultGap1),
                            child: orderState == OrderStateEnum.progress
                                ? CustomMainButtonWidget(
                                    title: S.current.close,
                                    isMain: false,
                                    onPressed: () {
                                      context.pop();
                                    },
                                  )
                                : CustomMainButtonWidget(
                                    title: S.current.cancel_the_order,
                                    isMain: false,
                                    color: context.theme.red,
                                    onPressed: () {
                                      context.pop();
                                    },
                                  ),
                          ),
                          secondChild: const Offstage(),
                          duration: Durations.medium1,
                          crossFadeState:
                              orderState == OrderStateEnum.accepted ||
                                      orderState == OrderStateEnum.searching ||
                                      orderState == OrderStateEnum.progress
                                  ? CrossFadeState.showFirst
                                  : CrossFadeState.showSecond,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
