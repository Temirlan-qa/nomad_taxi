import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/country_tile_widget.dart';

class CustomSelectCountryModalWidget extends StatelessWidget {
  const CustomSelectCountryModalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  width: 36,
                  height: 8,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: context.theme.stroke)),
            ),
            const Gap(UIConstants.defaultGap3),
            Text(S.current.your_region, style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultGap3),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CountryTileWidget(
                    title: '${S.current.kz_with_flag} +7',
                    onTap: () {
                      context.pop();
                    },
                  );
                },
              ),
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
