import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_click/features/register_and_login/presentation/manager/login_cubit/login_states.dart';

class UserLoginCubit extends Cubit<UserLoginStates>{

  UserLoginCubit():super(UserLoginInitialState());

  static UserLoginCubit get(context)=>BlocProvider.of(context);

  FirebaseAuth auth = FirebaseAuth.instance;
}