import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../../orders/presentation/bloc/order_bloc.dart';

class SearchAddressPage extends StatefulWidget {
  const SearchAddressPage({super.key});

  @override
  State<SearchAddressPage> createState() => _SearchAddressPageState();
}

class _SearchAddressPageState extends State<SearchAddressPage> {
  final TextEditingController addressController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      bloc: getIt<OrderBloc>(),
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(
          child: Form(
            key: formKey,
            child: Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.all(UIConstants.defaultPadding),
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Text(
                      S.current.where_are_going,
                      style: context.theme.textStyles.bodyMain
                          .copyWith(color: context.theme.secondary),
                    ),
                    TextFieldWidget(
                      controller: addressController,
                      hintText: S.current.enterAddress,
                      textFieldValidationState:
                          addressController.text.contains('123')
                              ? TextFieldValidationState.success
                              : TextFieldValidationState.none,
                      onChanged: (value) => setState(() {}),
                      suffix: TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          style: TextButton.styleFrom(
                              foregroundColor: context.theme.blue,
                              textStyle:
                                  context.theme.textStyles.headLine.copyWith(),
                              padding:
                                  const EdgeInsets.fromLTRB(10, 12, 10, 12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      UIConstants.defaultRadius)),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                          child: Text(S.current.onMap)),
                    ),
                    const Gap(UIConstants.defaultGap3),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: UIConstants.defaultGap1),
                      child: Text(
                        S.current.history,
                        style: context.theme.textStyles.bodyMain
                            .copyWith(color: context.theme.secondary),
                      ),
                    ),
                    // ListView.builder(
                    //     shrinkWrap: true,
                    //     physics: const NeverScrollableScrollPhysics(),
                    //     itemBuilder: (context, index) {
                    //       return SearchTileWidget(
                    //         title: 'index: $index',
                    //         onTap: () {
                    //           setState(() {
                    //             addressController.text = 'index $index';
                    //           });
                    //         },
                    //       );
                    //     },
                    //     itemCount: 15),
                    const Gap(UIConstants.defaultPadding2),

                    Assets.icons.brand.clock2.svg(
                      width: 64,
                      height: 64,
                      colorFilter: ColorFilter.mode(
                        context.theme.background,
                        BlendMode.srcIn,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(72, 12, 72, 12),
                      child: Text(
                        S.current.recent_trips_will_displayed_here,
                        textAlign: TextAlign.center,
                        style: context.theme.textStyles.bodyMain
                            .copyWith(color: context.theme.secondary),
                      ),
                    ),
                    const Gap(100),
                  ],
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: context.theme.white,
                    padding: const EdgeInsets.all(UIConstants.defaultPadding),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomMainButtonWidget(
                            title: S.current.back,
                            onPressed: () {
                              context.pop();
                            },
                            isMain: false,
                          ),
                        ),
                        const Gap(UIConstants.defaultGap1),
                        Expanded(
                          child: CustomMainButtonWidget(
                            title: S.current.next,
                            onPressed: () {
                              context.push(
                                RoutePaths.orderPrice,
                                extra: addressController.text,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
