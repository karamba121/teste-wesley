import 'package:flutter/cupertino.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:tota/src/auth/domain/entities/user_entity.dart';
import 'package:tota/src/auth/domain/usecases/register_user_with_email_and_password.dart';

class AuthStore extends NotifierStore<Exception, UserEntity>{
  AuthStore(UserEntity initialState) : super(initialState);
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> registerWithEmailAndPassword() async {
  }
}