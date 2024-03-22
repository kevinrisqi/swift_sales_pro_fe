import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/datasource/auth_remote_datasource.dart';
import 'package:swift_sales_pro_fe/modules/auth/data/models/auth_response_model.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  // final AuthResponseModel authResponseModel;
  LoginCubit() : super(const LoginState.initial());

  Future<void> login({required String email, required String password}) async {
    emit(const LoginState.loading());
    final response = await AuthRemoteDataSource.login(email: email, password: password);
    response.fold(
      (l) => emit(LoginState.error(l)),
      (r) => emit(LoginState.success(r)),
    );
  }
}
