import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/custom_details_title_sub_widget.dart';

class CustomDetailedInfoModalWidget extends StatelessWidget {
  const CustomDetailedInfoModalWidget(
      {super.key, required this.state, required this.scrollController});
  final OrderState state;
  final ScrollController scrollController;

  String orderStateName(OrderState orderState) {
    switch (orderState) {
      case OrderState.completed:
        return S.current.done;
      case OrderState.progress:
        return S.current.in_progress;
      case OrderState.searching:
        return S.current.on_search;
      case OrderState.canceled:
        return S.current.canceled;
      default:
        return S.current.in_progress;
    }
  }

  Color orderStateColor(BuildContext context, OrderState orderState) {
    switch (orderState) {
      case OrderState.completed:
        return context.theme.green;
      case OrderState.canceled:
        return context.theme.red;
      default:
        return context.theme.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: scrollController,
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ModalDragWidget(),
            const Gap(UIConstants.defaultGap3),
            Text(S.current.order_details,
                style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultPadding),
            CustomDetailsTitleSubWidget(
              title: S.current.order_status,
              subTitle: orderStateName(state),
              subStyle: context.theme.textStyles.titleSecondary
                  .copyWith(color: orderStateColor(context, state)),
            ),
            const Divider(height: UIConstants.defaultPadding2),
            CustomDetailsTitleSubWidget(
              title: S.current.where_from,
              subTitle: 'Мира 3',
            ),
            const Gap(UIConstants.defaultPadding),
            CustomDetailsTitleSubWidget(
              title: S.current.route,
              subTitle: 'Титова 14',
            ),
            const Gap(UIConstants.defaultPadding),
            CustomDetailsTitleSubWidget(
              title: S.current.price,
              subTitle: '300 ₸',
              subStyle: context.theme.textStyles.titleSecondary,
            ),
            AnimatedCrossFade(
              secondChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(height: UIConstants.defaultPadding2),
                  CustomDetailsTitleSubWidget(
                    title: S.current.your_driver,
                    subTitle: 'Нурдаулет Куанышов',
                  ),
                  const Gap(UIConstants.defaultPadding),
                  CustomDetailsTitleSubWidget(
                    title: S.current.phone_number,
                    subTitle: '+7 (705) 111-11-11',
                  ),
                  const Gap(UIConstants.defaultPadding),
                  CustomDetailsTitleSubWidget(
                    title: S.current.car_data,
                    subTitle: 'Зеленный Volswagen Polo, 987-AIB' * 3,
                  ),
                ],
              ),
              firstChild: const Offstage(),
              duration: Durations.medium1,
              crossFadeState: state == OrderState.searching
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            const Gap(48),
            AnimatedCrossFade(
              duration: Durations.medium1,
              firstChild: Padding(
                padding: const EdgeInsets.only(bottom: UIConstants.defaultGap1),
                child: CustomMainButtonWidget(
                  title: S.current.call,
                  onPressed: () {
                    // context.pop();
                  },
                  color: context.theme.green,
                  iconColor: context.theme.green,
                  prefixIcon: Assets.icons.solid.phoneSolid,
                  isMain: false,
                ),
              ),
              secondChild: const Offstage(),
              crossFadeState: state != OrderState.searching
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            CustomMainButtonWidget(
              title: S.current.close,
              onPressed: () {
                context.pop();
              },
              isMain: false,
            ),
          ],
        ),
      ),
    );
  }
}
