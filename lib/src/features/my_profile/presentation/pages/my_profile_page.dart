import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_back_button_wrapper_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/my_profile/presentation/widgets/show_delete_account_modal_widget.dart';
import 'package:nomad_taxi/src/features/my_profile/presentation/widgets/show_log_out_modal_widget.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  //TODO: temp
  final TextEditingController nameController =
      TextEditingController(text: 'Вася');
  final TextEditingController surnameController =
      TextEditingController(text: 'Пупкин');
  final TextEditingController phoneController =
      TextEditingController(text: '+7 (705) 123 45 67');
  bool isValChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: CustomBackButtonWrapperWidget(onPressed: () => context.pop()),
        actions: [
          TextButton.icon(
              onPressed: () {
                showLogOutModal(context);
              },
              style: TextButton.styleFrom(
                  foregroundColor: context.theme.red,
                  textStyle: context.theme.textStyles.headLine.copyWith(),
                  padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(UIConstants.defaultRadius)),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              icon: Assets.icons.regular.exit.svg(
                  width: 18,
                  height: 18,
                  colorFilter:
                      ColorFilter.mode(context.theme.red, BlendMode.srcIn)),
              label: Text(
                S.current.log_out_account.toLowerCase(),
              )),
          const Gap(14)
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              S.current.your_profile,
              style: context.theme.textStyles.titleMain,
            ),
            const Gap(UIConstants.defaultGap3),
            AnimatedCrossFade(
              duration: Durations.short3,
              secondChild: const Offstage(),
              firstChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.unsaved_changes,
                    style: context.theme.textStyles.bodySecondary
                        .copyWith(color: context.theme.green),
                  ),
                  const Gap(UIConstants.defaultGap3),
                ],
              ),
              crossFadeState: isValChanged
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.current.your_name,
                  style: context.theme.textStyles.bodyMain
                      .copyWith(color: context.theme.secondary),
                ),
                CustomMainTextFieldWidget(
                  controller: nameController,
                  hintText: S.current.your_name,
                  onChanged: (value) => setState(() {
                    isValChanged = true;
                  }),
                ),
                const Gap(6),
                Text(
                  S.current.your_surname,
                  style: context.theme.textStyles.bodyMain
                      .copyWith(color: context.theme.secondary),
                ),
                CustomMainTextFieldWidget(
                  controller: surnameController,
                  hintText: S.current.your_surname,
                  onChanged: (value) => setState(() {
                    isValChanged = true;
                  }),
                ),
                const Gap(6),
                Text(
                  S.current.phone_number,
                  style: context.theme.textStyles.bodyMain
                      .copyWith(color: context.theme.secondary),
                ),
                CustomMainTextFieldWidget(
                  controller: phoneController,
                  hintText: S.current.phone_number,
                  onChanged: (value) => setState(() {
                    isValChanged = true;
                  }),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedCrossFade(
              duration: Durations.short3,
              secondChild: const Offstage(),
              firstChild: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomMainButtonWidget(
                    title: S.current.save_changes,
                    onPressed: () {
                      setState(() {
                        isValChanged = false;
                      });
                    },
                  ),
                  const Gap(UIConstants.defaultGap1),
                ],
              ),
              crossFadeState: isValChanged
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
            CustomMainButtonWidget(
              title: S.current.delete_account,
              isMain: false,
              color: context.theme.red,
              onPressed: () {
                showDeleteAccountModal(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void showDeleteAccountModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomDeleteAccountModalWidget();
      },
    );
  }

  void showLogOutModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const CustomLogOutModalWidget();
      },
    );
  }
}
