import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';

class EnterDriverInfoPage extends StatefulWidget {
  const EnterDriverInfoPage({super.key});

  @override
  State<EnterDriverInfoPage> createState() => _EnterDriverInfoPageState();
}

class _EnterDriverInfoPageState extends State<EnterDriverInfoPage> {
  final TextEditingController carNumberController = TextEditingController();
  final TextEditingController carInfoController = TextEditingController();
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop()),
      ),
      body: SafeArea(
        child: Form(
          key: formKey1,
          child: ListView(
            padding: const EdgeInsets.all(UIConstants.defaultPadding),
            physics: const BouncingScrollPhysics(),
            children: [
              Text(
                S.current.car_data,
                style: context.theme.textStyles.titleMain,
              ),
              const Gap(UIConstants.defaultGap3),
              TextFieldWidget(
                controller: carNumberController,
                hintText: S.current.enter_car_number,
                textFieldValidationState:
                    carNumberController.text.contains('promo')
                        ? TextFieldValidationState.success
                        : TextFieldValidationState.none,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              TextFieldWidget(
                controller: carInfoController,
                hintText: S.current.enter_driver_info,
                textFieldValidationState:
                    carInfoController.text.contains('promo')
                        ? TextFieldValidationState.success
                        : TextFieldValidationState.none,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              Text(
                S.current.car_info_hint_text,
                style: context.theme.textStyles.bodyMain
                    .copyWith(color: context.theme.secondary),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: CustomMainButtonWidget(
          title: S.current.save,
          onPressed: carNumberController.text.contains('promo')
              ? () {
                  context.push(RoutePaths.driverOrders);
                }
              : null,
        ),
      ),
    );
  }
}
