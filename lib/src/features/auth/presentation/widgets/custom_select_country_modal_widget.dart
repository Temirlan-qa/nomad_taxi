import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/region_tile_widget.dart';

class CustomSelectCountryModalWidget extends StatefulWidget {
  const CustomSelectCountryModalWidget({
    super.key,
    required this.countries,
    required this.onTap,
  });
  final List<Map<String, String>> countries;
  final ValueSetter<String> onTap;

  @override
  State<CustomSelectCountryModalWidget> createState() =>
      _CustomSelectCountryModalWidgetState();
}

class _CustomSelectCountryModalWidgetState
    extends State<CustomSelectCountryModalWidget> {
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
            Text(
              S.current.your_region,
              style: context.theme.textStyles.titleMain,
            ),
            const Gap(UIConstants.defaultGap3),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: widget.countries.length,
                itemBuilder: (context, index) {
                  final Map<String, String> country = widget.countries[index];
                  return RegionTileWidget(
                    title: '${country['country']} ${country['code']}',
                    onTap: () {
                      widget.onTap(country['code']!);
                      context.pop();
                    },
                  );
                },
              ),
            ),
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
