import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: context.theme.white,
      child: Column(
        children: [
          Container(
            width: 320,
            height: 56,
            color: context.theme.grey,
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              context.pushNamed(RouteNames.aboutApp);
            },
            child: const Text('О приложении'),
          ),
        ],
      ),
    );
  }
}
