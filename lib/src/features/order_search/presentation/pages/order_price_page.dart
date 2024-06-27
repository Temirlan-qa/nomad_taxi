import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/all.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_container_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/bloc/searched_order_bloc.dart';
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
  final OrderBloc orderBloc = getIt<OrderBloc>();
  final SearchedOrderBloc searchedOrderBloc = getIt<SearchedOrderBloc>();

  int orderPrice = 800;

  @override
  void initState() {
    searchedOrderBloc.add(const SearchedOrderEvent.getCashbackInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final secondary = context.theme.secondary;

    return Scaffold(
      body: BlocBuilder<SearchedOrderBloc, SearchedOrderState>(
        bloc: searchedOrderBloc,
        builder: (context, state) {
          int? cashback = state.whenOrNull(
            loaded: (viewModel) {
              final cashbackInfo = viewModel.cashbackInfo;
              if (cashbackInfo == null) {
                return null;
              }
              return cashbackInfo.cashback;
            },
          );
          return SafeArea(
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
                        onTap: () {
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
                                  style:
                                      context.theme.textStyles.titleSecondary,
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
                                          return '${viewModel.bonus}';
                                        },
                                      ) ??
                                      '0',
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
                              onChanged: (val) {
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
                      onDecrease: orderPrice == 800
                          ? null
                          : () {
                              setState(() {
                                orderPrice >= 800 ? orderPrice -= 50 : 0;
                                priceController.text = '$orderPrice ₸';
                              });
                            },
                      onIncrease: () {
                        setState(
                          () {
                            orderPrice += 50;
                            priceController.text = '$orderPrice ₸';
                          },
                        );
                      },
                    ),
                    const Gap(UIConstants.defaultGap2),
                    cashback != null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.current.bonuses_each_order,
                                textAlign: TextAlign.center,
                                style: bodyMain.copyWith(color: secondary),
                              ),
                              const Gap(UIConstants.defaultGap2),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    decoration: BoxDecoration(
                                      color: context.theme.lightGreen,
                                      borderRadius: BorderRadius.circular(
                                          UIConstants.defaultGap1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+$cashback%',
                                        style: context.theme.textStyles.headLine
                                            .copyWith(
                                                color: context.theme.green),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        : const Offstage(),
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
          );
        },
      ),
    );
  }
}
