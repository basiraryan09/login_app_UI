

class SignupWithEmailAndPasswordFailure{
  final String message;

 const SignupWithEmailAndPasswordFailure([this.message ='An Unknown error occurred']);

    factory SignupWithEmailAndPasswordFailure.code(String code){
      switch(code){
        case 'weak-password':
          return const SignupWithEmailAndPasswordFailure('Please enter a stronger Password');
        case 'invalid-email':
          return const SignupWithEmailAndPasswordFailure('Email is not valid or badly formatted');
        case 'email-already-in-use':
          return const SignupWithEmailAndPasswordFailure('An account already exists for that email');
        case 'operation-not-allowed':
          return const SignupWithEmailAndPasswordFailure('Operation is not allowed. Please contact for help');
        case 'user-disabled':
          return const SignupWithEmailAndPasswordFailure('This user is disabled. Please contact for Help');
        default:
          return const SignupWithEmailAndPasswordFailure('');
      }
    }
}