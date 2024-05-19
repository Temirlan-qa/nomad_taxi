import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_back_button_wrapper_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';

class EnterDriverInfoPage extends StatelessWidget {
  const EnterDriverInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController carNumber = TextEditingController();

    return Scaffold(
      appBar: CustomAppBar(
          leading:
              CustomBackButtonWrapperWidget(onPressed: () => context.pop())),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(
                UIConstants.defaultGap3,
              ),
              child: Text(
                S.current.car_data,
                style: context.theme.textStyles.titleMain.copyWith(
                  color: context.theme.primary,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: UIConstants.defaultGap3,
            ),
            child: TextField(
              textAlign: TextAlign.left,
              controller: carNumber,
              style: context.theme.textStyles.headLine.copyWith(
                color: context.theme.primary,
              ),
              decoration: InputDecoration(
                hintStyle: context.theme.textStyles.headLine.copyWith(
                  color: context.theme.primary,
                ),
                contentPadding: const EdgeInsets.all(0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.secondary,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.secondary,
                  ),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.secondary,
                  ),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.red,
                  ),
                ),
                hintText: S.current.enter_car_number,
              ),
              keyboardType: TextInputType.number,
            ),
          ),

          const Gap(UIConstants.defaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: UIConstants.defaultGap3,
            ),
            child: TextField(
              textAlign: TextAlign.left,
              controller: carNumber,
              style: context.theme.textStyles.headLine.copyWith(
                color: context.theme.primary,
              ),
              decoration: InputDecoration(
                hintStyle: context.theme.textStyles.headLine.copyWith(
                  color: context.theme.primary,
                ),
                contentPadding: const EdgeInsets.all(0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.secondary,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.secondary,
                  ),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.secondary,
                  ),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.red,
                  ),
                ),
                hintText: S.current.enter_info,
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          // CustomMainTextFieldWidget(
          //   controller: carNumber,
          //   hintText: S.current.enter_info,
          //   keyboardType: TextInputType.number,
          // ),
          // CustomMainTextFieldWidget(
          //   controller: carNumber,
          //   hintText: S.current.car_info_hint_text,
          //   keyboardType: TextInputType.number,
          // ),
          const Gap(UIConstants.defaultGap3),
        ],
      ),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: CustomMainButtonWidget(
          title: S.current.enter_driver_info,
          onPressed: () {},
        ),
      ),
    );
  }
}
