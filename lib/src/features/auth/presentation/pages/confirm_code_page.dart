import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_pin_code_text_field_widget.dart';

import '../../../../core/utils/formatters/phone_number_formatter.dart';
import '../bloc/auth_bloc.dart';

class ConfirmCodePage extends StatefulWidget {
  const ConfirmCodePage({
    super.key,
    required this.phone,
    required this.userId,
    required this.countryCode,
  });
  final String userId;
  final String phone;
  final String countryCode;

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  final TextEditingController codeController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AuthBloc authBloc = getIt<AuthBloc>();
  @override
  Widget build(BuildContext context) {
    final headLine = context.theme.textStyles.headLine;
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: authBloc,
      listener: (context, state) {
        state.whenOrNull(
          verified: (viewModel) {
            if (viewModel.token.isNotEmpty || viewModel.token != '') {
              context.pushNamed(RouteNames.policy);
            }
          },
        );
      },
      builder: (context, state) {
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
                              S.current.sms_confirmation,
                              style: context.theme.textStyles.titleMain,
                            ),
                            const Gap(UIConstants.defaultGap2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  PhoneNumberFormatter().format(
                                    oldValue: widget.phone,
                                    formattedText: widget.countryCode,
                                  ),
                                  style: headLine,
                                ),
                                const Gap(UIConstants.defaultGap2),
                                InkWell(
                                  onTap: () {
                                    context.pop();
                                  },
                                  child: Text(
                                    S.current.change,
                                    style: headLine.copyWith(
                                        color: context.theme.blue),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(UIConstants.defaultGap2),
                            CustomPinCodeFieldWidget(
                              codeController: codeController,
                            ),
                            state.whenOrNull(
                                  errorVerify: (error) {
                                    return Text(
                                      error,
                                      textAlign: TextAlign.center,
                                      style: context
                                          .theme.textStyles.titleSecondary
                                          .copyWith(color: Colors.red),
                                    );
                                  },
                                  loading: () => const CircularProgressIndicator
                                      .adaptive(),
                                ) ??
                                const Offstage(),
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
                CustomMainButtonWidget(
                  title: S.current.send_code_again,
                  onPressed: () {
                    authBloc.add(
                      AuthEvent.reSendCode(
                        userId: widget.userId,
                      ),
                    );
                  },
                  isMain: false,
                ),
                const Gap(UIConstants.defaultGap1),
                CustomMainButtonWidget(
                  title: S.current.next,
                  onPressed: () {
                    authBloc.add(
                      AuthEvent.verify(
                        code: codeController.text,
                        userId: widget.userId,
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
