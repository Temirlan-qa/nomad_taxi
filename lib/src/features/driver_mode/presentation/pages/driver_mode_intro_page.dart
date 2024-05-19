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
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';

class DriverModeIntroPage extends StatelessWidget {
  const DriverModeIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leading:
              CustomBackButtonWrapperWidget(onPressed: () => context.pop())),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(
              UIConstants.defaultGap3,
            ),
            child: Text(
              S.current.driver_mode_intro_header1,
              style: context.theme.textStyles.extraTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: UIConstants.defaultGap3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.current.driver_mode_intro_header2,
                  style: context.theme.textStyles.bodyMain,
                ),
                const Gap(UIConstants.defaultGap2),
                Text(
                  S.current.driver_mode_intro_header3,
                  style: context.theme.textStyles.bodyMain,
                ),
                const Gap(UIConstants.defaultGap2),
                Text(
                  S.current.driver_mode_intro_header4,
                  style: context.theme.textStyles.bodyMain.copyWith(
                    color: context.theme.red,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              Assets.images.car.path,
              scale: 1.25,
            ),
          ),
          const Gap(UIConstants.defaultGap3),
        ],
      ),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: CustomMainButtonWidget(
          title: S.current.enter_driver_info,
          onPressed: () {
            context.go(RoutePaths.enterDriverInfo);
          },
        ),
      ),
    );
  }
}
