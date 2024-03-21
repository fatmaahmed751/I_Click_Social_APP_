import '../../../data/models/user_register_model.dart';

abstract class UserRegisterStates{}

class UserRegisterInitialState extends UserRegisterStates{}

class UserRegisterSuccessState extends UserRegisterStates{}

class UserRegisterLoadingState extends UserRegisterStates{}

class UserRegisterErrorState extends UserRegisterStates{
  final String errorMessage;

  UserRegisterErrorState(this.errorMessage);
}
class PickedProfileImageSuccessState extends UserRegisterStates{

}

class PickedProfileImageErrorState extends UserRegisterStates{

}

class GetUserRegisterDataSuccessState extends UserRegisterStates{
  UserRegisterModel userRegisterModel;
  GetUserRegisterDataSuccessState(this.userRegisterModel);
}

class GetUserRegisterDataErrorState extends UserRegisterStates{
  final String errorMessage;

  GetUserRegisterDataErrorState(this.errorMessage);
}

class GetUserRegisterDataLoadingState extends UserRegisterStates{}


