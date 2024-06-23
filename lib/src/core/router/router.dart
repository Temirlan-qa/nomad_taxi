import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/error/router_error_page.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/auth_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/confirm_code_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/policy_page.dart';
import 'package:nomad_taxi/src/features/choose_tariff/presentation/pages/choose_tariff.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/pages/order_finished_page.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/pages/order_page.dart';
import 'package:nomad_taxi/src/features/driver_mode/presentation/pages/driver_intro_page.dart';
import 'package:nomad_taxi/src/features/driver_mode/presentation/pages/driver_main_page.dart';
import 'package:nomad_taxi/src/features/driver_mode/presentation/pages/enter_driver_info_page.dart';
import 'package:nomad_taxi/src/features/franchise/presentation/pages/franchise_page.dart';
import 'package:nomad_taxi/src/features/help/presentation/pages/help_page.dart';
import 'package:nomad_taxi/src/features/main/presentation/pages/main_page.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/pages/order_price_page.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/pages/order_search_page.dart';
import 'package:nomad_taxi/src/features/order_search/presentation/pages/search_address_page.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';
import 'package:nomad_taxi/src/features/orders/presentation/pages/driver_orders_page.dart';
import 'package:nomad_taxi/src/features/profile/presentation/pages/profile_page.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/bloc/activate_promocode_bloc.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/pages/promo_code_added_page.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/pages/promo_code_page.dart';
import 'package:nomad_taxi/src/features/settings/presentation/pages/settings_page.dart';
import 'package:nomad_taxi/src/features/transfer_money/presentation/pages/transfer_money_instruction_page.dart';
import 'package:nomad_taxi/src/features/transfer_money/presentation/pages/transfer_money_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../features/main/presentation/pages/about_app_page.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  final StorageServiceImpl st = StorageServiceImpl();
  final String? token = st.getToken();

  return GoRouter(
    initialLocation: token == null ? RoutePaths.auth : RoutePaths.main,
    debugLogDiagnostics: true,
    routes: _routes(),
  );
}
