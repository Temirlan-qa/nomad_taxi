import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/all.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';

import '../widgets/show_modal_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final StorageServiceImpl st = StorageServiceImpl();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  bool isValChanged = false;

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: getIt<ProfileBloc>(),
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            leading: BackButtonWrapper(onPressed: () => context.pop()),
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
                ),
              ),
              const Gap(14),
            ],
          ),
          body: SafeArea(
            child: state.when(
              initial: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              loaded: (viewModel) {
                nameController.text = viewModel.firstName;
                surnameController.text = viewModel.lastName;
                phoneController.text = viewModel.phone;
                return ListView(
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
                        TextFieldWidget(
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
                        TextFieldWidget(
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
                        TextFieldWidget(
                          controller: phoneController,
                          hintText: S.current.phone_number,
                          onChanged: (value) => setState(() {
                            isValChanged = true;
                          }),
                        ),
                      ],
                    )
                  ],
                );
              },
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
      },
    );
  }

  void showDeleteAccountModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        //final ProfileBloc bloc = context.read<ProfileBloc>();
        return ShowModalWidget(
          text: S.current.delete_account,
          desc: S.current.delete_account_desc,
          cancelText: S.current.close,
          acceptText: S.current.delete_account,
          cancel: () {
            context.pop();
          },
          accept: () {
            context.pop();
            //bloc.add(const ProfileEvent.deleteAccount());
          },
        );
      },
    );
  }

  void showLogOutModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        //final ProfileBloc bloc = context.read<ProfileBloc>();
        return ShowModalWidget(
          text: S.current.you_want_exit,
          desc: S.current.you_want_exit_desc,
          cancelText: S.current.stay,
          acceptText: S.current.log_out_account,
          cancel: () {
            context.pop();
          },
          accept: () async {
            //TODO: uncomment this part of code after impl of login
            //st.deleteToken();
            //bloc.add(const ProfileEvent.logOut());
            while (context.canPop()) {
              context.pop();
            }
            context.pushReplacementNamed(RouteNames.auth);
          },
        );
      },
    );
  }
}
