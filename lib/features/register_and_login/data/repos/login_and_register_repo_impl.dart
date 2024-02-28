//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
//import 'package:firebase_auth/firebase_auth.dart';

import 'package:i_click/core/errors/failures.dart';

import 'package:i_click/features/register_and_login/data/models/user_login_model.dart';

import 'package:i_click/features/register_and_login/data/models/user_register_model.dart';

import 'login_and_register_repo.dart';

class LoginAndRegisterRepoImplement extends LoginAndRegisterRepo {

//   FirebaseAuth auth = FirebaseAuth.instance;
//
//   @override
//   Future<Either<Failure, UserLoginModel>> fetchUserLoginData(
//       UserLoginModel userLoginModel) async {
//   try{
//     await auth.signInWithEmailAndPassword(
//         email: userLoginModel.email,
//         password: userLoginModel.password);
//     return Right(userLoginModel);
//   } on FirebaseAuthException catch (e) {
//   if (e.code == 'weak-password') {
//   return Left( ServerFailure(e.toString(),errorMessage: 'The password provided is too weak.'));
//   } else if (e.code == 'email-already-in-use') {
//   return Left(ServerFailure(e.toString(),errorMessage:
//   'The account already exists for that email.',
//   ));
//   } else {
//   return Left(ServerFailure(e.toString(), errorMessage: e.toString()));
//
//   }
//   } catch (e) {
//   return Left(ServerFailure(e.toString(), errorMessage: e.toString()));
//
//   }
//
//   }
//
//   @override
//   Future<Either<Failure, UserRegisterModel>> fetchUserRegisterData(
//       UserRegisterModel userRegisterModel) async {
//     try {
//
//       await auth.createUserWithEmailAndPassword(
//           email: userRegisterModel.email,
//           password: userRegisterModel.password);
//       saveUserData(
//           uId: auth.currentUser!.uid,
//           name: userRegisterModel.name,
//           email: userRegisterModel.email,
//          image: userRegisterModel.image
//       );
//       return Right(userRegisterModel);
//
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         return Left( ServerFailure(e.toString(),errorMessage: 'The password provided is too weak.'));
//       } else if (e.code == 'email-already-in-use') {
//         return Left(ServerFailure(e.toString(),errorMessage:
//         'The account already exists for that email.',
//           ));
//       } else {
//         return Left(ServerFailure(e.toString(), errorMessage: e.toString()));
//       }
//     } catch (e) {
//       return Left(ServerFailure(e.toString(), errorMessage: e.toString()));
//     }
//   }
//
//   @override
//
//
//    Future<UserRegisterModel> saveUserData({
//      required String uId,
//     required String name,
//     required String image,
//     required String email,
//   }) async {
//     UserRegisterModel userRegisterModel = UserRegisterModel(
//         name: name,
//         uId: uId,
// image:image,
//         email:email
//     );
//     await FirebaseFirestore.instance.collection('users').
//     doc(uId).
//     set(userRegisterModel.toMap()).then((value) {
//       print(uId);
//      // emit(UserCreateSuccessState());
//     }).catchError((e) {
//       // emit(AppCreateErrorState());
//       print(e.toString());
//     });
//     return userRegisterModel;
//   }


}