import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/utils/formatters/price_input_formatter.dart';

class CustomOrderPriceTextFieldWidget extends StatefulWidget {
  const CustomOrderPriceTextFieldWidget({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<CustomOrderPriceTextFieldWidget> createState() =>
      _CustomOrderPriceTextFieldWidgetState();
}

class _CustomOrderPriceTextFieldWidgetState
    extends State<CustomOrderPriceTextFieldWidget> {
  int minPrice = 800;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
    widget.controller.text = '$minPrice ₸';
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  formatPrice() {
    setState(() {
      minPrice = 800;
      if (!widget.controller.text.contains('₸')) {
        widget.controller.text = '${widget.controller.text} ₸';
      } else if (widget.controller.text.isEmpty) {
        widget.controller.text = '$minPrice ₸';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.background,
      borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
      child: AnimatedContainer(
          duration: Durations.medium1,
          padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
              border: Border.all(color: context.theme.stroke)),
          child: Row(children: [
            InkWell(
              onTap: minPrice == 800
                  ? null
                  : () {
                      setState(() {
                        minPrice >= 800 ? minPrice -= 100 : 0;
                        widget.controller.text = '$minPrice ₸';
                      });
                    },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(UIConstants.defaultPadding),
                child: Assets.icons.solid.minusSolid.svg(
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                      minPrice == 800
                          ? context.theme.secondary
                          : context.theme.red,
                      BlendMode.srcIn),
                ),
              ),
            ),
            Container(
              height: 48,
              width: 2,
              color: context.theme.stroke,
              margin: const EdgeInsets.symmetric(
                  horizontal: UIConstants.defaultGap2),
            ),
            Expanded(
              child: TextFormField(
                controller: widget.controller,
                focusNode: _focusNode,
                style: context.theme.textStyles.extraTitle,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                onTapOutside: (event) {
                  _focusNode.unfocus();
                  formatPrice();
                },
                onEditingComplete: () {
                  formatPrice();
                },
                inputFormatters: [PriceInputFormatter()],
                decoration: InputDecoration(
                  isCollapsed: true,
                  fillColor: context.theme.background,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 48,
              width: 2,
              color: context.theme.stroke,
              margin: const EdgeInsets.symmetric(
                  horizontal: UIConstants.defaultGap2),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  minPrice += 100;
                  widget.controller.text = '$minPrice ₸';
                });
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(UIConstants.defaultPadding),
                child: Assets.icons.solid.plusSolid.svg(
                  width: 24,
                  height: 24,
                  colorFilter:
                      ColorFilter.mode(context.theme.red, BlendMode.srcIn),
                ),
              ),
            ),
          ])),
    );
  }
}
