import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/service/auth/models/sign_in_request.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_select_country_modal_widget.dart';

import '../../../../core/service/auth/models/verify_request.dart';
import '../../../../core/service/injectable/injectable_service.dart';
import '../../../../core/service/storage/storage_service_impl.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String selectedRegionCode = '+7';

  AuthBloc authBloc = getIt<AuthBloc>();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Form(
            key: formKey,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(UIConstants.defaultPadding),
                child: Column(
                  children: [
                    const Expanded(flex: 4, child: Offstage()),
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Text(S.current.your_phone,
                              style: context.theme.textStyles.titleMain),
                          const Gap(UIConstants.defaultGap2),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: UIConstants.defaultPadding2),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 10, 0),
                                  child: Text(selectedRegionCode,
                                      style: context.theme.textStyles.headLine),
                                ),
                                //TODO: add formatter
                                Expanded(
                                  child: TextFieldWidget(
                                    controller: phoneController,
                                    hintText: S.current.your_phone,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomMainBottomWidgets(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                S.current.your_region,
                style: context.theme.textStyles.bodyMain
                    .copyWith(color: context.theme.secondary),
              ),
              const Gap(UIConstants.defaultGap1),
              CustomMainButtonWidget(
                title: S.current.kz_with_flag,
                onPressed: () {
                  showRegionModal(context);
                },
                isMain: false,
              ),
              const Gap(UIConstants.defaultGap1),
              CustomMainButtonWidget(
                title: S.current.next,
                onPressed: () async {
                  authBloc.add(
                    const AuthEvent.login(
                      signInBody: SignInRequest(
                        phone: '77476133356',
                      ),
                    ),
                  );

                  StorageServiceImpl st = StorageServiceImpl();

                  authBloc.add(AuthEvent.verify(
                    verifyRequest: VerifyRequest(
                      userId: st.getToken()!,
                      code: '7777',
                    ),
                  ));

                  // context.push(RoutePaths.codeConfirm);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void showRegionModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const CustomSelectCountryModalWidget();
      },
    );
  }
}
