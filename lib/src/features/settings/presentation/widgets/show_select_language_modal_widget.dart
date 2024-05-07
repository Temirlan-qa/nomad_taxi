import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/app/runner.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_modal_drag_widget.dart';
import 'package:nomad_taxi/src/features/settings/presentation/widgets/country_tile_widget.dart';

class CustomSelectLanguageModalWidget extends StatelessWidget {
  const CustomSelectLanguageModalWidget({
    super.key,
  });

  getLanguage(String languageCode) {
    if ('ru' == languageCode) {
      return 'Русский';
    }
    return 'Қазақша';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomModalDragWidget(),
            const Gap(UIConstants.defaultGap3),
            Text(S.current.select_language,
                style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultGap3),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: S.delegate.supportedLocales.length,
                itemBuilder: (context, index) {
                  String languageCode =
                      S.delegate.supportedLocales[index].languageCode;
                  return CountryTileWidget(
                    showUnderline:
                        index != S.delegate.supportedLocales.length - 1,
                    isSelected: languageCode == S.current.current_locale,
                    title: getLanguage(languageCode),
                    onTap: () async {
                      await st.setLanguageCode(languageCode);
                      await S
                          .load(Locale.fromSubtags(languageCode: languageCode))
                          .then((value) => context.pop());
                    },
                  );
                },
              ),
            ),
            const Gap(UIConstants.defaultGap3),
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
