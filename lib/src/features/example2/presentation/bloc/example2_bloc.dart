import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'example2_event.dart';
part 'example2_state.dart';

class Example2Bloc extends Bloc<Example2Event, Example2State> {
  Example2Bloc() : super(Example2Initial()) {
    on<Example2Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
