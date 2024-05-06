part of 'custom_main_button_widget.dart';

class MainButtonTextWidget extends StatelessWidget {
  const MainButtonTextWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: context.theme.textStyles.headLine, maxLines: 1, overflow: TextOverflow.ellipsis);
  }
}

class MainButtonIconWidget extends StatelessWidget {
  const MainButtonIconWidget({super.key, this.icon, this.color});
  final SvgGenImage? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return icon?.svg(
            width: 18, height: 18, colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null) ??
        const Offstage();
  }
}
