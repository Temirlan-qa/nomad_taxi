import 'package:flutter/material.dart';
import 'package:flutter_super_html_viewer/utils/shims/dart_ui_real.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_animation_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_container_widget.dart';

class CustomMainPageBottomModalWidget extends StatefulWidget {
  const CustomMainPageBottomModalWidget({
    super.key,
  });

  @override
  State<CustomMainPageBottomModalWidget> createState() =>
      _CustomMainPageBottomModalWidgetState();
}

class _CustomMainPageBottomModalWidgetState
    extends State<CustomMainPageBottomModalWidget> {
  bool isBlured = false;
  @override
  Widget build(BuildContext context) {
    return CustomAnimationWidget(
      child: CustomContainerWidget(
        child: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(
                  sigmaX: 10, sigmaY: 10, tileMode: TileMode.decal),
              enabled: isBlured,
              child: Container(
                foregroundDecoration: isBlured
                    ? BoxDecoration(
                        color: context.theme.white.withOpacity(0.7),
                        borderRadius:
                            BorderRadius.circular(UIConstants.defaultGap3),
                      )
                    : null,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const ModalDragWidget(),
                    // const Gap(UIConstants.defaultGap2),
                    Material(
                      color: context.theme.transparent,
                      clipBehavior: Clip.hardEdge,
                      borderRadius:
                          BorderRadius.circular(UIConstants.defaultGap2),
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding:
                              const EdgeInsets.all(UIConstants.defaultGap2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(S.current.your_location,
                                      style: context.theme.textStyles.bodyMain
                                          .copyWith(
                                              color: context.theme.secondary)),
                                ],
                              ),
                              const Gap(UIConstants.defaultGap1),
                              Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: 12,
                                runSpacing: 12,
                                children: [
                                  Column(
                                    children: [
                                      Text('Байконур',
                                          style: context
                                              .theme.textStyles.titleSecondary),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Assets.icons.solid.penSolid1.svg(
                                              height: 16,
                                              width: 16,
                                              colorFilter: ColorFilter.mode(
                                                  context.theme.blue,
                                                  BlendMode.srcIn)),
                                          const Gap(UIConstants.defaultGap5),
                                          Text(S.current.change,
                                              style: context
                                                  .theme.textStyles.headLine
                                                  .copyWith(
                                                      color:
                                                          context.theme.blue)),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Gap(UIConstants.defaultGap2),
                    CustomMainButtonWidget(
                      title: S.current.order_taxi,
                      onPressed: () {
                        context.pushNamed(RouteNames.searchAddress);
                      },
                    ),
                  ],
                ),
              ),
            ),
            !isBlured
                ? const Offstage()
                : Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Gap(UIConstants.defaultGap5),
                        Text(
                          S.current.have_active_order,
                          style: context.theme.textStyles.headLine,
                        ),
                        const Gap(UIConstants.defaultGap5),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                isBlured = false;
                              });
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: context.theme.red,
                                textStyle: context.theme.textStyles.headLine
                                    .copyWith(),
                                padding:
                                    const EdgeInsets.fromLTRB(10, 12, 10, 12),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        UIConstants.defaultRadius)),
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            child: Text(S.current.finish_order)),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
