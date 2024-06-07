import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/features/transfer_money/presentation/bloc/balance_bloc.dart';

class TransferMoneyPage extends StatelessWidget {
  const TransferMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BaseBlocWidget<BalanceBloc, BalanceEvent, BalanceState>(
          bloc: getIt<BalanceBloc>(),
          starterEvent: const BalanceEvent.payInfo(),
          builder: (context, state, bloc) {
            return state.when(
              initial: () => const SizedBox(),
              loaded: (BalanceViewModel viewModel) {
                return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: HtmlWidget(viewModel.payInfo),
                );
              },
              error: (_) => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
