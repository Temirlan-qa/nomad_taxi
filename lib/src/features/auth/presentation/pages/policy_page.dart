import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_check_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  bool isAgreeWithPolicy = false;

// TODO: temp text
  String temp =
      '''Тут будет текст политики конфиденциальности. А так же различные под пункты и условия с которым должны ознакомиться пользователи перед пользованием сервиса

Пункт один. Изгаляется что это важно и нужно к прочтению
Пункт два. Изгаляется что это важно и нужно к прочтению
''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.all(UIConstants.defaultPadding2),
        physics: const BouncingScrollPhysics(),
        children: [
          Text(S.current.privacy_policy,
              style: context.theme.textStyles.extraTitle),
          const Gap(UIConstants.defaultGap3),
          Text(temp * 20, style: context.theme.textStyles.bodyMain),
        ],
      )),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(UIConstants.defaultPadding),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(UIConstants.defaultRadius),
                  color: context.theme.background,
                  border: Border.all(color: context.theme.stroke)),
              child: Row(
                children: [
                  Expanded(
                      child: Text(S.current.agree_wit_privacy_policy,
                          style: context.theme.textStyles.headLine)),
                  CustomMainCheckWidget(
                    value: isAgreeWithPolicy,
                    onPressed: () {
                      setState(() {
                        isAgreeWithPolicy = !isAgreeWithPolicy;
                      });
                    },
                  )
                ],
              ),
            ),
            const Gap(UIConstants.defaultGap1),
            CustomMainButtonWidget(
              title: S.current.next,
              onPressed: isAgreeWithPolicy
                  ? () {
                      //TODO: refactor auth route logic
                      while (context.canPop()) {
                        context.pop();
                      }
                      context.pushReplacementNamed(RouteNames.main);
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
