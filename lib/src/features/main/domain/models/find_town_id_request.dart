import 'package:nomad_taxi/src/core/base/base_models/base_request.dart';

class FindTownIdRequest extends BaseRequest {
  FindTownIdRequest({required this.latitude, required this.longitude});
  final double latitude;
  final double longitude;
}
