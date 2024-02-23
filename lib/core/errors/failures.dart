



abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {

  //final String errorMessage;


  ServerFailure(super.errMessage, {required String errorMessage});

  //  FirebaseAuthException   (errMessage){
  //
  // if (errMessage.code == 'weak-password') {
  // print('The password provided is too weak.');
  // } else if (errMessage.code == 'email-already-in-use') {
  // print('The account already exists for that email.');
  // }
  //
  // print(errMessage);
  // }
}

