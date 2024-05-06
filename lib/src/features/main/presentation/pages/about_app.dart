import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        appBarText: '',
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.card.path,
              width: 345,
              height: 474,
            ),
            const Spacer(),
            const CustomMainButtonWidget(
              isMain: false,
              title: 'Поделиться приложением',
            ),
          ],
        ),
      ),
    );
  }
}
