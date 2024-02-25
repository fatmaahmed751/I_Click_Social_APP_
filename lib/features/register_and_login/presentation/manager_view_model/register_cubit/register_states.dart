abstract class UserRegisterStates{}

class UserRegisterInitialState extends UserRegisterStates{}

class UserRegisterSuccessState extends UserRegisterStates{}

class UserRegisterLoadingState extends UserRegisterStates{}

class UserRegisterErrorState extends UserRegisterStates{
  final String errorMessage;

  UserRegisterErrorState(this.errorMessage);
}