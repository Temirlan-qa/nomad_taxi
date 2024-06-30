import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/api/client/endpoints.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_container_widget.dart';
import 'package:nomad_taxi/src/core/widgets/toggle_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  bool isAgreeWithPolicy = false;
  bool isLoading = true;
  bool isPageFinished = false;
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    initializeWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          WebViewWidget(controller: _controller),
          Positioned.fill(
              child: Center(
            child: AnimatedCrossFade(
                firstChild: const CircularProgressIndicator.adaptive(),
                secondChild: const Offstage(),
                crossFadeState: isLoading
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Durations.medium1),
          ))
        ],
      )),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomContainerWidget(
              onTap: !isPageFinished
                  ? null
                  : () {
                      setState(() {
                        isAgreeWithPolicy = !isAgreeWithPolicy;
                      });
                    },
              child: Row(
                children: [
                  Expanded(
                    child: Text(S.current.agree_wit_privacy_policy,
                        style: context.theme.textStyles.headLine),
                  ),
                  ToggleWidget(value: isAgreeWithPolicy)
                ],
              ),
            ),
            const Gap(UIConstants.defaultGap1),
            CustomMainButtonWidget(
              title: S.current.next,
              onPressed: isAgreeWithPolicy
                  ? () {
                      while (context.canPop()) {
                        context.pop();
                      }
                      context.pushReplacementNamed(RouteNames.main);
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  void initializeWebView() async {
    final WebViewController controller = WebViewController();
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            setState(() {
              progress == 100 ? isLoading = false : isLoading = true;
            });
          },
          onPageStarted: (String url) {
            isPageFinished = false;
            _controller.enableZoom(false);
            _controller.runJavaScript("""
            document.documentElement.style['userSelect'] = 'none';
            document.documentElement.style['-webkit-user-select'] = 'none';
            document.documentElement.style['-moz-user-select'] = 'none';
            document.documentElement.style['-ms-user-select'] = 'none';
            document.documentElement.style['user-select'] = 'none';
          """);
          },
          onPageFinished: (String url) {
            isPageFinished = true;
            _controller.enableZoom(false);
            _controller.runJavaScript("""
            document.documentElement.style['userSelect'] = 'none';
            document.documentElement.style['-webkit-user-select'] = 'none';
            document.documentElement.style['-moz-user-select'] = 'none';
            document.documentElement.style['-ms-user-select'] = 'none';
            document.documentElement.style['user-select'] = 'none';
          """);
          },
          onNavigationRequest: (NavigationRequest request) async {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(EndPoints.privacy));
    _controller = controller;
  }
}
