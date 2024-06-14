import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_partner_data_request.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import '../../../profile/presentation/widgets/show_modal_widget.dart';

class EnterDriverInfoPage extends StatefulWidget {
  const EnterDriverInfoPage({super.key});

  @override
  State<EnterDriverInfoPage> createState() => _EnterDriverInfoPageState();
}

class _EnterDriverInfoPageState extends State<EnterDriverInfoPage> {
  final TextEditingController carNumberController = TextEditingController();
  final TextEditingController carInfoController = TextEditingController();

  late UpdatePartnerDataRequest request;

  String carNumber = '';
  String carInfo = '';

  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<ProfileBloc, ProfileEvent, ProfileState>(
      bloc: getIt<ProfileBloc>(),
      starterEvent: const ProfileEvent.init(),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          orElse: () {
            return const SizedBox();
          },
          loaded: (viewModel) {
            return Scaffold(
              appBar: CustomAppBar(
                leading: BackButtonWrapper(onPressed: () => context.pop()),
              ),
              body: SafeArea(
                child: Form(
                  key: formKey1,
                  child: ListView(
                    padding: const EdgeInsets.all(UIConstants.defaultPadding),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Text(
                        S.current.car_data,
                        style: context.theme.textStyles.titleMain,
                      ),
                      const Gap(UIConstants.defaultGap3),
                      TextFieldWidget(
                        controller: carNumberController,
                        hintText: S.current.enter_car_number,
                        textFieldValidationState:
                            carNumberController.text.isNotEmpty
                                ? TextFieldValidationState.success
                                : TextFieldValidationState.none,
                        onChanged: (value) {
                          setState(() {
                            carNumber = value;
                          });
                        },
                      ),
                      TextFieldWidget(
                        controller: carInfoController,
                        hintText: S.current.enter_driver_info,
                        textFieldValidationState:
                            carInfoController.text.isNotEmpty
                                ? TextFieldValidationState.success
                                : TextFieldValidationState.none,
                        onChanged: (value) {
                          setState(() {
                            carInfo = value;
                          });
                        },
                      ),
                      const Gap(UIConstants.defaultGap3),
                      Text(
                        S.current.car_info_hint_text,
                        style: context.theme.textStyles.bodyMain
                            .copyWith(color: context.theme.secondary),
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: CustomMainBottomWidgets(
                child: CustomMainButtonWidget(
                  title: S.current.save,
                  onPressed: () {
                    if (carNumberController.text.isNotEmpty &&
                        carInfoController.text.isNotEmpty) {
                      request = UpdatePartnerDataRequest(
                        carModel: carInfo,
                        carNumber: carNumber,
                        firstName: viewModel.firstName,
                        lastName: viewModel.lastName,
                        townId: 1,
                      );
                      bloc.add(
                        ProfileEvent.updatePartnerData(
                          partnerData: request,
                        ),
                      );

                      context.push(RoutePaths.driverMode);
                    } else {
                      if (carNumberController.text.isEmpty) {
                        showEnterCarNumberModal(context);
                      } else {
                        showEnterCarModelModal(context);
                      }
                    }
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

void showEnterCarModelModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ShowModalWidget(
        text: S.current.driverRequirement1,
        desc: '',
        cancelText: S.current.close,
        acceptText: 'Ok',
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

void showEnterCarNumberModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ShowModalWidget(
        text: S.current.driverRequirement2,
        desc: '',
        cancelText: S.current.close,
        acceptText: 'Ok',
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
