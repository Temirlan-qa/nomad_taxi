import 'package:nomad_taxi/src/core/base/base_models/base_request.dart';

class OrderRequest extends BaseRequest {
  const OrderRequest({required this.id});
  final int id;
}
