import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_pin_code_text_field_widget.dart';

class ConfirmCodePage extends StatefulWidget {
  const ConfirmCodePage({super.key});

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final headLine = context.theme.textStyles.headLine;
    return Scaffold(
      body: SafeArea(
          child: Form(
        key: formKey,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          child: Column(
            children: [
              const Expanded(flex: 4, child: Offstage()),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Text(S.current.sms_confirmation,
                        style: context.theme.textStyles.titleMain),
                    const Gap(UIConstants.defaultGap2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('+7 (777) 777-77-77', style: headLine),
                        const Gap(UIConstants.defaultGap2),
                        InkWell(
                            onTap: () {
                              context.pop();
                            },
                            child: Text(S.current.change,
                                style: headLine.copyWith(
                                    color: context.theme.blue))),
                      ],
                    ),
                    const Gap(UIConstants.defaultGap2),
                    CustomPinCodeFieldWidget(codeController: codeController)
                  ],
                ),
              )
            ],
          ),
        )),
      )),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomMainButtonWidget(
              title: S.current.send_code_again,
              onPressed: () {},
              isMain: false,
            ),
            const Gap(UIConstants.defaultGap1),
            CustomMainButtonWidget(
              title: S.current.next,
              onPressed: () {
                context.pushNamed(RouteNames.policy);
              },
            ),
          ],
        ),
      ),
    );
  }
}
