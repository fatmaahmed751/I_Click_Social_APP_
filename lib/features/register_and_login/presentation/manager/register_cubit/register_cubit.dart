import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_click/features/register_and_login/data/models/user_register_model.dart';
import 'package:i_click/features/register_and_login/presentation/manager/register_cubit/register_states.dart';

import '../../../data/repos/login_and_register_repo.dart';

class UserRegisterCubit extends Cubit<UserRegisterStates>{

  UserRegisterCubit(this.loginAndRegisterRepo):super(UserRegisterInitialState());

  static UserRegisterCubit get(context)=>BlocProvider.of(context);

  final LoginAndRegisterRepo loginAndRegisterRepo;

  Future<void> getUserData(UserRegisterModel userRegisterModel) async{
    emit(UserRegisterLoadingState());
   var result =
   await loginAndRegisterRepo.fetchUserRegisterData(userRegisterModel);
   result.fold((serverFailure) =>
       emit(UserRegisterErrorState(serverFailure.errMessage)),
           (userRegisterModel) =>
               emit(UserRegisterSuccessState()));

  }
}