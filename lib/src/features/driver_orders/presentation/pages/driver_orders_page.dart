import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_back_button_wrapper_widget.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/widgets/show_info_bonus_modal_widget.dart';
import 'package:nomad_taxi/src/features/driver_orders/presentation/widgets/check_mark_indicator.dart';
import 'package:nomad_taxi/src/features/driver_orders/presentation/widgets/show_order_modal_widget.dart';

class DriverOrdersPage extends StatelessWidget {
  const DriverOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: CustomBackButtonWrapperWidget(onPressed: () => context.pop()),
        actions: [
          Assets.icons.solid.clockSolid.svg(
              height: 18,
              width: 18,
              colorFilter:
                  ColorFilter.mode(context.theme.secondary, BlendMode.srcIn)),
          const Gap(UIConstants.defaultGap7),
          Text(
            '${S.current.on_line} 18:00',
            style: context.theme.textStyles.titleTag
                .copyWith(color: context.theme.secondary),
          ),
          const Gap(UIConstants.defaultGap3),
        ],
      ),
      // TODO: temp
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // showInfoBounsModal(context);
          },
          label: const Text('temp')),
      body: SafeArea(
        child: CheckMarkIndicator(
          child: ListView.separated(
            padding: const EdgeInsets.all(UIConstants.defaultPadding),
            itemCount: 10,
            separatorBuilder: (ctx, index) {
              return const Gap(UIConstants.defaultGap1);
            },
            itemBuilder: (ctx, index) {
              return InkWell(
                onTap: () {
                  context.push(RoutePaths.order);
                },
                borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
                child: Ink(
                  padding: const EdgeInsets.all(UIConstants.defaultPadding),
                  decoration: BoxDecoration(
                      color: context.theme.background,
                      borderRadius:
                          BorderRadius.circular(UIConstants.defaultRadius),
                      border: Border.all(color: context.theme.stroke)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(S.current.delivery,
                                  style: context.theme.textStyles.bodyMain
                                      .copyWith(color: context.theme.blue)),
                              const Gap(UIConstants.defaultGap5),
                              Text('800 〒',
                                  style: context.theme.textStyles.extraTitle),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Типография Konica',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: context.theme.textStyles.headLine),
                          ),
                          const Gap(UIConstants.defaultGap2),
                          Assets.icons.brand.arrow1.svg(
                              height: 18,
                              width: 18,
                              colorFilter: ColorFilter.mode(
                                  context.theme.secondary, BlendMode.srcIn)),
                          const Gap(UIConstants.defaultGap2),
                          Expanded(
                            child: Text('Ниточкина 6а',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: context.theme.textStyles.headLine),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
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

  void showInfoBounsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomInfoBonusModalWidget();
      },
    );
  }
}
