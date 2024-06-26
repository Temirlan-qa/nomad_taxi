import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/settings/presentation/widgets/country_tile_widget.dart';

import '../bloc/settings/settings_bloc.dart';

class CustomSelectLanguageModalWidget extends StatelessWidget {
  const CustomSelectLanguageModalWidget({
    super.key,
  });

//TODO: select languange finish

  getLanguage(String languageCode) {
    if ('ru' == languageCode) {
      return 'Русский';
    }
    return 'Қазақша';
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      bloc: context.read<SettingsBloc>(),
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          inProgress: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          done: (languageCode) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(UIConstants.defaultGap3),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ModalDragWidget(),
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
                            isSelected:
                                languageCode == S.current.current_locale,
                            title: getLanguage(languageCode),
                            onTap: () async {
                              log(languageCode);
                              context.read<SettingsBloc>().add(
                                    SettingsEvent.update(
                                      request: UpdateLanguageRequest(
                                        languageCode: languageCode,
                                      ),
                                    ),
                                  );
                              context.read<SettingsBloc>().state.maybeWhen(
                                    orElse: () {},
                                    done: (languageCode) async {
                                      await S
                                          .load(Locale(languageCode))
                                          .then((value) {
                                        log('done');
                                      });
                                    },
                                  );
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
          },
        );
      },
    );
  }
}
