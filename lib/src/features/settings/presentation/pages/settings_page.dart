import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_back_button_wrapper_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_tile_widget.dart';
import 'package:nomad_taxi/src/features/settings/presentation/widgets/show_select_language_modal_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leading:
              CustomBackButtonWrapperWidget(onPressed: () => context.pop())),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              S.current.settings,
              style: context.theme.textStyles.titleMain,
            ),
            const Gap(UIConstants.defaultGap3),
            Column(
              children: [
                CustomMainTileWidget(
                    title: S.current.change_language,
                    onTap: () {
                      showLanguageModal(context);
                    }),
                //TODO: city is temp
                // CustomMainTileWidget(
                //   title: S.current.city,
                //   subTitle: 'Байконур',
                //   onTap: () {},
                //   showUnderline: false,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showLanguageModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomSelectLanguageModalWidget();
      },
    );
  }
}
