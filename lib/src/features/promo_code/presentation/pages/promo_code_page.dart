import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/activate_promocode_request.dart';
import 'package:nomad_taxi/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/bloc/activate_promocode_bloc.dart';

class PromoCodePage extends StatefulWidget {
  const PromoCodePage({super.key});

  @override
  State<PromoCodePage> createState() => _PromoCodePageState();
}

class _PromoCodePageState extends State<PromoCodePage> {
  final TextEditingController promoCodeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final bloc = getIt<ActivatePromocodeBloc>();

  final profileBloc = getIt<ProfileBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActivatePromocodeBloc, ActivatePromocodeState>(
      bloc: bloc,
      listener: (context, state) {
        state.whenOrNull(loaded: (value) {
          context.pushReplacementNamed(RouteNames.promoCodeAdded, extra: value);
        });
      },
      builder: (context, _) {
        return BlocBuilder<ProfileBloc, ProfileState>(
          bloc: profileBloc,
          builder: (context, state) {
            return Scaffold(
              appBar: CustomAppBar(
                leading: BackButtonWrapper(onPressed: () => context.pop()),
              ),
              body: SafeArea(
                child: Form(
                  key: formKey,
                  child: ListView(
                    padding: const EdgeInsets.all(UIConstants.defaultPadding),
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Text(
                        S.current.activate_promoCode,
                        style: context.theme.textStyles.titleMain,
                      ),
                      const Gap(UIConstants.defaultGap3),
                      TextFieldWidget(
                        controller: promoCodeController,
                        hintText: S.current.enter_promoCode,
                        textFieldValidationState:
                            promoCodeController.text.isNotEmpty
                                ? TextFieldValidationState.success
                                : TextFieldValidationState.none,
                        onChanged: (value) => setState(() {}),
                      )
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: CustomMainBottomWidgets(
                child: CustomMainButtonWidget(
                  title: S.current.next,
                  onPressed: promoCodeController.text.isEmpty
                      ? null
                      : () {
                          state.whenOrNull(
                            loaded: (viewModel) {
                              bloc.add(ActivatePromocodeEvent.acivatePromocode(
                                  request: ActivatePromocodeRequest(
                                      promocode: promoCodeController.text,
                                      townId: viewModel.pTownId ?? 8)));
                            },
                          );
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
