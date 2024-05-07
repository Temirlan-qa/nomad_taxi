import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_check_widget.dart';

class CountryTileWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool showUnderline;
  final bool isSelected;

  const CountryTileWidget(
      {Key? key,
      required this.title,
      required this.onTap,
      required this.isSelected,
      this.showUnderline = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 54,
        decoration: showUnderline
            ? BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        strokeAlign: BorderSide.strokeAlignInside,
                        width: 1,
                        color: context.theme.stroke)))
            : null,
        child: Row(
          children: [
            CustomMainCheckWidget(value: isSelected, onPressed: onTap),
            Text(title, style: context.theme.textStyles.headLine)
          ],
        ),
      ),
    );
  }
}
