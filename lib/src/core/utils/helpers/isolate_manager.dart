import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:worker_manager/worker_manager.dart';

typedef DynamicFromJson<MR> = MR Function(Map<String, dynamic> json);
typedef DynamicMethod<R, I> = FutureOr<R> Function(I input);
typedef NoneInputMethod<R> = FutureOr<R> Function();
typedef NoneOutputMethod<I> = FutureOr<void> Function(I input);
typedef NoneInputOutputMethod = FutureOr<void> Function();
typedef DynamicStream<R, I> = Stream<R> Function(I input);

@singleton
class IsolateManager {
  IsolateManager() {
    init();
  }

  Future<void> init() async {
    await workerManager.init(isolatesCount: 20);
  }

  Cancelable<R?> parseJson<R, MR>(
    String jsonData,
    DynamicFromJson<MR> fromJson,
  ) {
    return workerManager.executeGentle<R?>(
      (isCanceled) async {
        while (!isCanceled()) {
          final parsed = json.decode(jsonData);
          if (parsed is List) {
            return parsed.map((e) => fromJson(e)).toList() as R;
          }

          return fromJson(parsed) as R;
        }
        return null;
      },
    );
  }

  Cancelable<R> methodExecute<R, I>(
    I input,
    DynamicMethod<R, I> isolateCallback,
  ) {
    return workerManager.executeGentle<R>(
      (_) {
        return isolateCallback(input);
      },
    );
  }

  Cancelable<R> noneInputMethodExecute<R>(
    NoneInputMethod<R> isolateCallback,
  ) {
    return workerManager.executeGentle<R>(
      (_) async {
        return await isolateCallback();
      },
    );
  }

  Cancelable<void> noneOutputMethodExecute<I>(
    I input,
    NoneOutputMethod<I> isolateCallback,
  ) {
    return workerManager.executeGentle<void>(
      (_) async {
        return await isolateCallback(input);
      },
    );
  }

  Cancelable<void> noneInputOutputMethodExecute(
    NoneInputOutputMethod isolateCallback,
  ) {
    return workerManager.executeGentle<void>(
      (_) async {
        return await isolateCallback();
      },
    );
  }

  Future<void> dispose() async {
    await workerManager.dispose();
  }
}
