import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/utils/helpers/formatter_helper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_select_country_modal_widget.dart';

import '../../../../core/router/router.dart';
import '../../../../core/service/injectable/injectable_service.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AuthBloc authBloc = getIt<AuthBloc>();
  String selectedRegionCode = '+7';

  static final List<Map<String, String>> countries = [
    {
      "country": S.current.kz_with_flag,
      "code": "+7",
    },
  ];
  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<AuthBloc, AuthEvent, AuthState>(
      bloc: authBloc,
      listener: (context, state) {
        state.whenOrNull(
          loaded: (viewModel) => context.push(
            RoutePaths.codeConfirm,
            extra: {
              "phone": phoneController.text,
              "userId": '${viewModel.userId}',
              "countryCode": selectedRegionCode,
            },
          ),
        );
      },
      builder: (context, state, bloc) {
        return Scaffold(
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
                            Text(
                              S.current.your_phone,
                              style: context.theme.textStyles.titleMain,
                            ),
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
                                    child: Text(
                                      selectedRegionCode,
                                      style: context.theme.textStyles.headLine,
                                    ),
                                  ),
                                  Expanded(
                                    child: TextFieldWidget(
                                      controller: phoneController,
                                      hintText: S.current.your_phone,
                                      inputFormatters: [
                                        FormatterHelper
                                            .phoneNumberSeparatorHelperFormatter
                                      ],
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            state.whenOrNull(
                                  error: (String message) {
                                    return Text(
                                      S.current.invalidInfoError,
                                      textAlign: TextAlign.center,
                                      style: context
                                          .theme.textStyles.titleSecondary
                                          .copyWith(
                                        color: Colors.red,
                                      ),
                                    );
                                  },
                                  loading: () => const CircularProgressIndicator
                                      .adaptive(),
                                ) ??
                                const Offstage(),
                          ],
                        ),
                      ),
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
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomSelectCountryModalWidget(
                          countries: countries,
                          onTap: (String code) {
                            setState(() {
                              selectedRegionCode = code;
                            });
                          },
                        );
                      },
                    );
                  },
                  isMain: false,
                ),
                const Gap(UIConstants.defaultGap1),
                CustomMainButtonWidget(
                  title: S.current.next,
                  onPressed: () async {
                    final step1 = phoneController.text.replaceAll('-', '');
                    final step2 = selectedRegionCode.replaceAll("+", "");
                    final phoneNumber = step2 + step1;
                    authBloc.add(
                      AuthEvent.login(
                        phone: phoneNumber,
                      ),
                    );
                    state.whenOrNull(
                      loaded: (viewModel) => context.push(
                        RoutePaths.codeConfirm,
                        extra: {
                          "phone": phoneController.text,
                          "userId": '${viewModel.userId}',
                          "countryCode": selectedRegionCode,
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
