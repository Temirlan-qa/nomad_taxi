import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/flutter_super_html_viewer.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';

class TransferMoneyInstructionPage extends StatelessWidget {
  const TransferMoneyInstructionPage({super.key, required this.withdrawInfo});

  final String withdrawInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop()),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: HtmlContentViewer(
            htmlContent: withdrawInfo,
          ),
        ),
      ),
    );
  }
}
