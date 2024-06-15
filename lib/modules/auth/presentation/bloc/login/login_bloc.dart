import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/datasource/auth_local_datasource.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/datasource/auth_remote_datasource.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/models/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const LoginState.loading());
      await Future.delayed(const Duration(seconds: 1));
      final response = await AuthRemoteDataSource.login(
        email: event.email,
        password: event.password,
      );
      response.fold(
        (l) => emit(LoginState.error(message: l)),
        (r) {
          emit(LoginState.success(r));
        },
      );
    });
  }
}
