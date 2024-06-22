import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/features/franchise/presentation/bloc/franchise_bloc.dart';

class FranchisePage extends StatelessWidget {
  const FranchisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          leading: BackButtonWrapper(onPressed: () => context.pop())),
      body: BaseBlocWidget<FranchiseBloc, FranchiseEvent, FranchiseState>(
        bloc: getIt<FranchiseBloc>(),
        starterEvent: const FranchiseEvent.franchiseInfo(),
        builder: (context, state, bloc) {
          return state.when(
            initial: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            error: (_) =>
                const Center(child: CircularProgressIndicator.adaptive()),
            loaded: (viewModel) {
              return SafeArea(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Center(
                    child: HtmlContentViewer(
                      htmlContent: viewModel.franchise,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
