import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TransferMoneyInstructionPage extends StatelessWidget {
  const TransferMoneyInstructionPage(
      {super.key, required this.withdrawInfoController});

  final WebViewController withdrawInfoController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop()),
      ),
      body: WebViewWidget(controller: withdrawInfoController),
    );
  }
}
