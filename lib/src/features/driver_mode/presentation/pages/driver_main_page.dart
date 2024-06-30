import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/all.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_container_widget.dart';
import 'package:nomad_taxi/src/core/widgets/drawer/drawer_widget.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/bloc/driver_order_bloc.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/drawer_bottom_widget.dart';

class DriverMainPage extends StatefulWidget {
  const DriverMainPage({super.key});

  @override
  State<DriverMainPage> createState() => _DriverMainPageState();
}

class _DriverMainPageState extends State<DriverMainPage> {
  bool switchState = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final DriverOrderBloc _driverOrderBloc = getIt<DriverOrderBloc>();

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final secondary = context.theme.secondary;
    final driverState = _driverOrderBloc.state;

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: getIt<ProfileBloc>(),
      builder: (context, state) {
        return state.when(
          initial: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          loaded: (viewModel) {
            return Scaffold(
              key: _scaffoldKey,
              drawer: DrawerWidget(
                onSwitchMode: () {
                  context.pushNamed(RouteNames.main);
                },
                isDriverMode: true,
              ),
              appBar: CustomAppBar(
                appBarText: S.current.driver_mode,
                isDrawer: true,
                leading: DrawerButtonWidget(
                  scaffoldKey: _scaffoldKey,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              body: SafeArea(
                child: ListView(
                  padding: const EdgeInsets.all(UIConstants.defaultPadding),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: CustomContainerWidget(
                                onTap: () {
                                  context.pushNamed(RouteNames.transferMoney);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      S.current.your_account,
                                      style:
                                          bodyMain.copyWith(color: secondary),
                                    ),
                                    const Gap(UIConstants.defaultGap7),
                                    Text(
                                      '${viewModel.pBalance ?? 0}',
                                      style: context.theme.textStyles.titleMain,
                                    ),
                                    const Gap(UIConstants.defaultGap2),
                                    Text(
                                      S.current.recharge_account,
                                      style: context.theme.textStyles.headLine
                                          .copyWith(color: context.theme.red),
                                    ),
                                  ],
                                )),
                          ),
                          const Gap(UIConstants.defaultGap1),
                          CustomContainerWidget(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.current.your_bonuses,
                                style: bodyMain.copyWith(color: secondary),
                              ),
                              const Gap(UIConstants.defaultGap7),
                              Text(
                                '${viewModel.pBonus ?? 0}',
                                style: context.theme.textStyles.titleMain,
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                    const Gap(UIConstants.defaultGap3),
                    CustomContainerWidget(
                        onTap: () {
                          context.pushNamed(
                            RouteNames.chooseTariff,
                            extra: viewModel.pBalance ?? 0,
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.current.your_tariff,
                              style: bodyMain.copyWith(color: secondary),
                            ),
                            const Gap(UIConstants.defaultGap7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  S.current.free,
                                  style:
                                      context.theme.textStyles.titleSecondary,
                                ),
                                Assets.icons.regular.chevronRightSolid.svg(
                                  width: 18,
                                  height: 18,
                                  colorFilter: ColorFilter.mode(
                                    secondary,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(UIConstants.defaultGap7),
                            Text(
                              S.current.select_tariff,
                              style: bodyMain.copyWith(color: secondary),
                            ),
                          ],
                        )),
                    const Gap(UIConstants.defaultGap1),
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
                                  S.current.on_line,
                                  style: context.theme.textStyles.headLine,
                                ),
                                const Gap(UIConstants.defaultGap5),
                                Text(
                                  switchState
                                      ? S.current.offline
                                      : S.current.active,
                                  style: bodyMain.copyWith(
                                    color: switchState
                                        ? context.theme.red
                                        : context.theme.green,
                                  ),
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
                                _driverOrderBloc
                                    .add(const DriverOrderEvent.getOrders());
                                getIt<ProfileBloc>().add(
                                    const ProfileEvent.togglePartnerStatus());
                                setState(() {
                                  switchState = val;
                                });
                              },
                            )
                          ],
                        )),
                    const Gap(UIConstants.defaultGap3),
                    CustomContainerWidget(
                      onTap: !switchState
                          ? null
                          : () {
                              driverState.maybeWhen(
                                loaded: (viewModel) {
                                  context.pushNamed(RouteNames.order,
                                      extra: viewModel.activeOrder);
                                },
                                orElse: () =>
                                    context.pushNamed(RouteNames.driverOrders),
                              );
                            },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.current.orders,
                                style: context.theme.textStyles.titleSecondary
                                    .copyWith(
                                  color: switchState
                                      ? context.theme.primary
                                      : secondary,
                                ),
                              ),
                              const Gap(UIConstants.defaultGap7),
                              Text(
                                S.current.go_offline,
                                style: bodyMain.copyWith(color: secondary),
                              ),
                            ],
                          ),
                          Assets.icons.regular.chevronRightSolid.svg(
                            width: 18,
                            height: 18,
                            colorFilter:
                                ColorFilter.mode(secondary, BlendMode.srcIn),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
