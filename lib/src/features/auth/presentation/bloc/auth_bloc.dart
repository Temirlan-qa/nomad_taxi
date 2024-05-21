// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:injectable/injectable.dart';
// import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
// import 'package:nomad_taxi/src/features/auth/data/repositories/i_auth_repository.dart';

// import '../../../../core/exceptions/domain_exception.dart';

// part 'auth_bloc.freezed.dart';
// part 'auth_event.dart';
// part 'auth_state.dart';

// @singleton
// @injectable
// class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
//   final IAuthRepository repository;

//   AuthBloc({
//     required this.repository,
//   }) : super(const AuthState._()) {
//     on<Login>(onLogin);
//     on<Verify>(onVerify);
//   }

//   void onVerify(
//     Verify event,
//     Emitter<AuthState> emit,
//   ) {
//     // emit(state.copyWith(
//     //   signInBody: state.signInBody ?? SignInBody.empty(),
//     // ));

//     // emit(state.copyWith(
//     //   signInBody: switch (event.field) {
//     //     AuthField.email => state.signInBody?.copyWith(
//     //         email: event.value,
//     //       ),
//     //     AuthField.password => state.signInBody?.copyWith(
//     //         password: event.value,
//     //       ),
//     //   },
//     // ));
//   }

//   Future<void> onLogin(
//     Login event,
//     Emitter<AuthState> emit,
//   ) async {
//     // if (state.signInBody == null) return;

//     // emit(state.copyWith(status: LoadStatus.loading));

//     // final result = await repository.signIn(body: state.signInBody!);

//     // result.fold(
//     //   (l) => emit(state.copyWith(status: LoadStatus.failed)),
//     //   (r) => emit(state.copyWith(
//     //     status: LoadStatus.success,
//     //     isUserSignedIn: true,
//     //     toCreateProfile: r.isProfileCreated == false,
//     //   )),
//     // );
//   }

//   @override
//   void onEventHandler(AuthEvent event, Emitter emit) {}
// }
