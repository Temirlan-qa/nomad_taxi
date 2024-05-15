import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_back_button_wrapper_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_tile_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/help/presentation/widgets/show_info_modal_widget.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leading:
              CustomBackButtonWrapperWidget(onPressed: () => context.pop())),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              S.current.help,
              style: context.theme.textStyles.titleMain,
            ),
            const Gap(UIConstants.defaultGap2),
            Text(
              S.current.answers_popular_questions,
              style: context.theme.textStyles.bodyMain
                  .copyWith(color: context.theme.secondary),
            ),
            const Gap(UIConstants.defaultGap3),
            Column(
              children: [
                CustomMainTileWidget(
                    title: S.current.cancel_order,
                    onTap: () {
                      showInfoModal(context, S.current.cancel_order);
                    }),
                CustomMainTileWidget(
                    title: S.current.refill_bonuses,
                    onTap: () {
                      showInfoModal(context, S.current.refill_bonuses);
                    }),
                CustomMainTileWidget(
                    title: S.current.using_bonuses,
                    onTap: () {
                      showInfoModal(context, S.current.using_bonuses);
                    }),
                CustomMainTileWidget(
                    title: S.current.forgot_stuff,
                    onTap: () {
                      showInfoModal(context, S.current.forgot_stuff);
                    }),
                CustomMainTileWidget(
                    title: S.current.driver_canceled_order,
                    onTap: () {
                      showInfoModal(context, S.current.driver_canceled_order);
                    },
                    showUnderline: false),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomMainButtonWidget(
              prefixIcon: Assets.icons.solid.phoneSolid,
              iconColor: context.theme.green,
              title: S.current.support_service,
              onPressed: () {},
              isMain: false,
            ),
            const Gap(UIConstants.defaultGap1),
            CustomMainButtonWidget(
              prefixIcon: Assets.icons.solid.commentSolid,
              iconColor: context.theme.green,
              title: S.current.write_appeal,
              onPressed: () {
                // context.push(RoutePaths.codeConfirm);
              },
              isMain: false,
            ),
          ],
        ),
      ),
    );
  }

  void showInfoModal(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return CustomInfoModalWidget(title: title);
      },
    );
  }
}
