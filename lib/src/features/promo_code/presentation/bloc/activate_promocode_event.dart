part of 'activate_promocode_bloc.dart';

@freezed
class ActivatePromocodeEvent with _$ActivatePromocodeEvent {
  const factory ActivatePromocodeEvent.acivatePromocode({
    required ActivatePromocodeRequest request,
  }) = _ActivatePromocode;
}
