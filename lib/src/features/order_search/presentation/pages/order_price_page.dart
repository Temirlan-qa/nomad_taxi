import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/all.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_container_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/bloc/main_bloc.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/custom_order_price_text_field_widget.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/point/point_entity.dart';
import 'package:nomad_taxi/src/features/orders/presentation/bloc/order_bloc.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../../orders/domain/entities/create_order/create_order_entity.dart';

class OrderPricePage extends StatefulWidget {
  const OrderPricePage(
      {super.key, required this.whereTo, required this.whereFrom});

  final String whereTo;
  final String whereFrom;

  @override
  State<OrderPricePage> createState() => _OrderPricePageState();
}

class _OrderPricePageState extends State<OrderPricePage> {
  final TextEditingController priceController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool switchState = false;

  final ProfileBloc profileBloc = getIt<ProfileBloc>();
  final MainBloc mainBloc = getIt<MainBloc>();

  int bonus = 0;
  String cashbackPercent = '+10%';

  int orderPrice = 800;
  int? orderMaxPrice;
  int? orderMinPrice;
  @override
  void initState() {
    super.initState();
    initPrices();
  }

  initPrices() {
    mainBloc.state.whenOrNull(loaded: (viewModel) {
      orderPrice = viewModel.insideCity?.minPrice ?? 800;
      orderMinPrice = orderMinPrice ?? (viewModel.insideCity?.minPrice ?? 800);
      orderMaxPrice = orderMaxPrice ?? viewModel.insideCity?.maxPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final secondary = context.theme.secondary;
    final OrderBloc orderBloc = getIt<OrderBloc>();
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              CustomContainerWidget(
                  onTap: bonus == 0
                      ? null
                      : () {
                          setState(() {
                            switchState = !switchState;
                          });
                        },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.current.use_bonuses,
                            style: context.theme.textStyles.titleSecondary,
                          ),
                          const Gap(UIConstants.defaultGap1),
                          Text(
                            S.current.your_bonuses,
                            textAlign: TextAlign.center,
                            style: bodyMain.copyWith(color: secondary),
                          ),
                          const Gap(2),
                          Text(
                            profileBloc.state.whenOrNull(
                                  loaded: (viewModel) {
                                    bonus = viewModel.bonus;

                                    return '${viewModel.bonus}';
                                  },
                                ) ??
                                '$bonus',
                            style: context.theme.textStyles.titleMain
                                .copyWith(color: context.theme.red),
                          ),
                        ],
                      ),
                      Switch(
                        focusColor: secondary,
                        hoverColor: secondary,
                        activeTrackColor: secondary,
                        activeColor: context.theme.primary,
                        inactiveThumbColor: secondary,
                        inactiveTrackColor: context.theme.stroke,
                        value: switchState,
                        onChanged: bonus == 0
                            ? null
                            : (val) {
                                setState(
                                  () {
                                    switchState = val;
                                  },
                                );
                              },
                      ),
                    ],
                  )),
              const Gap(UIConstants.defaultGap2),
              CustomOrderPriceTextFieldWidget(
                  controller: priceController,
                  orderPrice: orderPrice,
                  onDecrease: (orderPrice <= (orderMinPrice ?? 800))
                      ? null
                      : () {
                          setState(() {
                            orderPrice >= (orderMinPrice ?? 800)
                                ? orderPrice -= 100
                                : 0;
                            priceController.text = '$orderPrice ₸';
                          });
                        },
                  onIncrease: orderMaxPrice != null &&
                          ((orderMaxPrice! - 100) < orderPrice &&
                              orderPrice <= orderMaxPrice!)
                      ? null
                      : () {
                          setState(() {
                            orderPrice += 100;
                            priceController.text = '$orderPrice ₸';
                          });
                        }),
              const Gap(UIConstants.defaultGap2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.current.bonuses_each_order,
                    textAlign: TextAlign.center,
                    style: bodyMain.copyWith(color: secondary),
                  ),
                  const Gap(UIConstants.defaultGap2),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    decoration: BoxDecoration(
                      color: context.theme.lightGreen,
                      borderRadius:
                          BorderRadius.circular(UIConstants.defaultGap1),
                    ),
                    child: Center(
                      child: Text(
                        cashbackPercent,
                        style: context.theme.textStyles.headLine
                            .copyWith(color: context.theme.green),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(UIConstants.defaultGap2),
              Row(
                children: [
                  Expanded(
                    child: CustomMainButtonWidget(
                      title: S.current.back,
                      onPressed: () {
                        context.pop();
                      },
                      isMain: false,
                    ),
                  ),
                  const Gap(UIConstants.defaultGap1),
                  Expanded(
                    child: CustomMainButtonWidget(
                      title: S.current.next,
                      onPressed: () {
                        context.push(
                          RoutePaths.orderSearch,
                          extra: {
                            "whereFrom": widget.whereFrom,
                            "whereTo": widget.whereTo,
                            "price": orderPrice,
                          },
                        );
                        orderBloc.add(
                          OrderEvent.createOrder(
                            orderEntity: CreateOrderEntity.empty(
                              price: orderPrice,
                              //useBonus: bonus,
                              townId: 8,
                              points: [
                                PointEntity(
                                  lat: 45.21111,
                                  lng: 76.21111,
                                  title: widget.whereFrom,
                                ),
                                PointEntity(
                                  lat: 46.21111,
                                  lng: 77.21111,
                                  title: widget.whereTo,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
