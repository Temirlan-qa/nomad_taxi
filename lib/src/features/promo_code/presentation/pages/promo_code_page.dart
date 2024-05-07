import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_back_button_wrapper_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';

class PromoCodePage extends StatefulWidget {
  const PromoCodePage({super.key});

  @override
  State<PromoCodePage> createState() => _PromoCodePageState();
}

class _PromoCodePageState extends State<PromoCodePage> {
  final TextEditingController promoCodeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String promo = 'promo'; // TODO: temp
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leading:
              CustomBackButtonWrapperWidget(onPressed: () => context.pop())),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: ListView(
            padding:
                const EdgeInsets.only(top: 24, right: 36, left: 36, bottom: 24),
            physics: const BouncingScrollPhysics(),
            children: [
              Text(
                S.current.activate_promoCode,
                style: context.theme.textStyles.titleMain,
              ),
              const Gap(UIConstants.defaultGap3),
              CustomMainTextFieldWidget(
                controller: promoCodeController,
                hintText: S.current.enter_promoCode,
                textFieldValidationState:
                    promoCodeController.text.contains(promo)
                        ? TextFieldValidationState.success
                        : TextFieldValidationState.none,
                onChanged: (value) => setState(() {}),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: CustomMainButtonWidget(
          title: S.current.next,
          onPressed: !promoCodeController.text.contains(promo)
              ? null
              : () {
                  context.push(RoutePaths.promoCodeAdded);
                },
        ),
      ),
    );
  }
}
