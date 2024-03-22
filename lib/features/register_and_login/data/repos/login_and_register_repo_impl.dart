import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:i_click/core/errors/failures.dart';

import 'package:i_click/features/register_and_login/data/models/user_login_model.dart';

import 'package:i_click/features/register_and_login/data/models/user_register_model.dart';

import 'login_and_register_repo.dart';

class LoginAndRegisterRepoImplement extends LoginAndRegisterRepo {

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<Either<Failure, UserLoginModel>> fetchUserLoginData(
      UserLoginModel userLoginModel) async {
  try{
    await auth.signInWithEmailAndPassword(
        email: userLoginModel.email,
        password: userLoginModel.password);
    return Right(userLoginModel);
  } on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
  return Left( ServerFailure(e.toString(),errorMessage: 'The password provided is too weak.'));
  } else if (e.code == 'email-already-in-use') {
  return Left(ServerFailure(e.toString(),errorMessage:
  'The account already exists for that email.',
  ));
  } else {
  return Left(ServerFailure(e.toString(), errorMessage: e.toString()));

  }
  } catch (e) {
  return Left(ServerFailure(e.toString(), errorMessage: e.toString()));

  }

  }

  @override
  Future<Either<Failure, UserRegisterModel>> fetchUserRegisterData(
      UserRegisterModel userRegisterModel) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: userRegisterModel.email,
          password: userRegisterModel.password);
      saveUserData(
          uId: auth.currentUser!.uid,
          name: userRegisterModel.name,
          email: userRegisterModel.email,
         image: userRegisterModel.image,
        coverImage: userRegisterModel.coverImage

      );
      return Right(userRegisterModel);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left( ServerFailure(e.toString(),errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        return Left(ServerFailure(e.toString(),errorMessage:
        'The account already exists for that email.',
          ));
      } else {
        return Left(ServerFailure(e.toString(), errorMessage: e.toString()));
      }
    } catch (e) {
      return Left(ServerFailure(e.toString(), errorMessage: e.toString()));
    }
  }


  @override
   Future<UserRegisterModel> saveUserData({
     required String uId,
    required String name,
    required String image,
    required String email,
    required String coverImage,
  }) async {
    UserRegisterModel userRegisterModel = UserRegisterModel(
        name: name,
        uId: uId,
image:
'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'
        ,
        email:email,
      coverImage:
      'https://www.freepik.com/free-photo/happy-arab-woman-hijab-portrait-smiling-girl-posing-red-studio-background-young-emotional-woman-human-emotions-facial-expression-concept-front-view_11527721.htm#fromView=search&page=1&position=2&uuid=bab6bc38-97ac-4c7c-9cff-eebd43561c52'
    );
    await FirebaseFirestore.instance.collection('users').
    doc(uId).
    set(userRegisterModel.toMap()).then((value) {
      print(uId);
     // emit(UserCreateSuccessState());
    }).catchError((e) {
      // emit(AppCreateErrorState());
      print(e.toString());
    });
    return userRegisterModel;
  }


   UserRegisterModel userRegisterModel = UserRegisterModel();
  @override
  Future<Either<Failure, UserRegisterModel>> getUserData()async {

    String userId = FirebaseAuth.instance.currentUser!.uid;
   // UserRegisterModel? userRegisterModel;
    await FirebaseFirestore.instance.collection('users').
    doc(userId).
    get().then((value) {
      userRegisterModel = UserRegisterModel.fromJson(value.data()!);
      print(userId);
      print(userRegisterModel.image);
    }).catchError((e) {
      print(e.toString());
    });
   return  Right(userRegisterModel);
  }
  }


