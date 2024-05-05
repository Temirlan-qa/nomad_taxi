import 'package:flutter/material.dart';

import 'package:nomad_taxi/src/core/theme/theme.dart';

class CountryTileWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const CountryTileWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 54,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(strokeAlign: BorderSide.strokeAlignInside, width: 1, color: context.theme.stroke))),
        child: Row(
          children: [Text(title, style: context.theme.textStyles.headLine)],
        ),
      ),
    );
  }
}
