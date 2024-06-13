import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/features/transfer_money/presentation/bloc/balance_bloc.dart';

class TransferMoneyPage extends StatelessWidget {
  const TransferMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<BalanceBloc, BalanceEvent, BalanceState>(
      bloc: getIt<BalanceBloc>(),
      starterEvent: const BalanceEvent.getInfo(),
      builder: (context, state, bloc) {
        return state.when(
          initial: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          error: (_) =>
              const Center(child: CircularProgressIndicator.adaptive()),
          loaded: (viewModel) {
            return Scaffold(
              appBar: CustomAppBar(
                  leading: BackButtonWrapper(onPressed: () => context.pop()),
                  actions: [
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          RouteNames.transferMoneyInstruction,
                          extra: viewModel.withdrawInfo,
                        );
                      },
                      child: Row(
                        children: [
                          Assets.icons.solid.circleUpSolid.svg(
                              height: 18, width: 18, color: context.theme.red),
                          const SizedBox(width: 5),
                          Text(
                            'Вывести деньги',
                            style: context.theme.textStyles.titleTag
                                .copyWith(color: context.theme.red),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    )
                  ]),
              body: SafeArea(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Center(
                    child: HtmlContentViewer(
                      htmlContent: viewModel.payInfo,
                    ),
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
