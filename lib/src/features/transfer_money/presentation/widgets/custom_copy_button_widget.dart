import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomCopyButtonWidget extends StatelessWidget {
  const CustomCopyButtonWidget({
    super.key,
    this.code,
    this.name,
    this.phone,
  });

  final String? name;
  final String? phone;
  final String? code;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
      onTap: () async {
        await Clipboard.setData(ClipboardData(text: code ?? phone ?? ''));
      },
      child: Ink(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
              color: context.theme.lightBlue,
              border: Border.all(color: context.theme.blue)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.tap_to_copy,
                    style: context.theme.textStyles.bodyMain
                        .copyWith(color: context.theme.blue),
                  ),
                  const Gap(UIConstants.defaultGap1),
                  code != null
                      ? Text(
                          'ID $code',
                          style: context.theme.textStyles.extraTitle
                              .copyWith(color: context.theme.blue),
                        )
                      : Text(
                          '$phone',
                          style: context.theme.textStyles.titleSecondary
                              .copyWith(color: context.theme.blue),
                        ),
                  code != null
                      ? const Offstage()
                      : Padding(
                          padding: const EdgeInsets.only(
                              top: UIConstants.defaultGap1),
                          child: Text(
                            '$name',
                            style: context.theme.textStyles.bodyMain
                                .copyWith(color: context.theme.blue),
                          ),
                        ),
                ],
              ),
              Assets.icons.regular.copyRegular1.svg(
                  height: 24,
                  width: 24,
                  colorFilter:
                      ColorFilter.mode(context.theme.blue, BlendMode.srcIn))
            ],
          )),
    );
  }
}
