import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';

class CustomInfoModalWidget extends StatelessWidget {
  const CustomInfoModalWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ModalDragWidget(),
            const Gap(UIConstants.defaultGap3),
            Text(title, style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultGap2),
            Flexible(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(temptext * 4,
                      style: context.theme.textStyles.bodyMain)),
            ),
            const Gap(UIConstants.defaultGap3),
            Text(S.current.answer_dev,
                style: context.theme.textStyles.bodySecondary
                    .copyWith(color: context.theme.secondary)),
            const Gap(UIConstants.defaultGap5),
            Text('от 17 марта 2024 г.',
                style: context.theme.textStyles.headLine
                    .copyWith(color: context.theme.secondary)),
            const Gap(UIConstants.defaultGap3),
            CustomMainButtonWidget(
              title: S.current.close,
              onPressed: () {
                context.pop();
              },
              isMain: false,
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: temp
String temptext =
    '''Если что то писать длинное и пояснительное. То будет появлятся модалка чтобы пользователь комфортно и удобно смог прочитать текст и информацию которую искал или нашел''';
