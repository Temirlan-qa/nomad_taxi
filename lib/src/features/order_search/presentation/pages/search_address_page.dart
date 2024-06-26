import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/text_fields/text_field_widget.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/bloc/searched_order_bloc.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/no_searched_address.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/widgets/search_tile_widget.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../../orders/presentation/bloc/order_bloc.dart';

class SearchAddressPage extends StatefulWidget {
  const SearchAddressPage({
    required this.latLng,
    required this.whereFrom,
    super.key,
  });

  final LatLng latLng;
  final String whereFrom;
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

  final bloc = getIt<SearchedOrderBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      bloc: getIt<OrderBloc>(),
      builder: (context, _) {
        return BaseBlocWidget<SearchedOrderBloc, SearchedOrderEvent,
            SearchedOrderState>(
          starterEvent: const SearchedOrderEvent.getSearchedOrder(),
          bloc: bloc,
          builder: (context, _, __) {
            return Scaffold(
              body: SafeArea(
                child: Form(
                  key: formKey,
                  child: Stack(
                    children: [
                      ListView(
                        padding:
                            const EdgeInsets.all(UIConstants.defaultPadding),
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
                                addressController.text.isNotEmpty
                                    ? TextFieldValidationState.success
                                    : TextFieldValidationState.none,
                            onChanged: (value) => setState(() {}),
                            suffix: TextButton(
                                onPressed: () {
                                  context.pop();
                                },
                                style: TextButton.styleFrom(
                                    foregroundColor: context.theme.blue,
                                    textStyle: context.theme.textStyles.headLine
                                        .copyWith(),
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 12, 10, 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        UIConstants.defaultRadius,
                                      ),
                                    ),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap),
                                child: Text(S.current.onMap)),
                          ),
                          const Gap(UIConstants.defaultGap3),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: UIConstants.defaultGap1),
                            child: Text(S.current.history,
                                style: context.theme.textStyles.bodyMain
                                    .copyWith(color: context.theme.secondary)),
                          ),
                          BlocBuilder<SearchedOrderBloc, SearchedOrderState>(
                            builder: (context, searchedOrderState) {
                              return searchedOrderState.map(
                                initial: (a) => const NoSearchedAddress(),
                                loading: (a) =>
                                    const CircularProgressIndicator.adaptive(),
                                loaded: (a) {
                                  return a.viewModel.searchedOrderEntity?.data
                                              ?.length !=
                                          0
                                      ? ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) {
                                            return SearchTileWidget(
                                              title:
                                                  '${a.viewModel.searchedOrderEntity?.data?[index].title}',
                                              onTap: () {
                                                setState(() {
                                                  addressController.text =
                                                      '${a.viewModel.searchedOrderEntity?.data?[index].title}';
                                                });
                                              },
                                            );
                                          },
                                          itemCount: a
                                              .viewModel
                                              .searchedOrderEntity
                                              ?.data
                                              ?.length)
                                      : const NoSearchedAddress();
                                },
                              );
                            },
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
                          padding:
                              const EdgeInsets.all(UIConstants.defaultPadding),
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
                                    if (addressController.text.isNotEmpty) {
                                      context.push(
                                        RoutePaths.orderPrice,
                                        extra: {
                                          "whereFrom": widget.whereFrom,
                                          "whereTo": addressController.text,
                                        },
                                      );
                                    }
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
              ),
            );
          },
        );
      },
    );
  }
}
