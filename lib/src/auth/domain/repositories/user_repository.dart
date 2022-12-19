import 'package:tota/src/auth/domain/entities/user_entity.dart';

abstract class IUserRepository{
  Future<UserEntity> registerUserWithEmailAndPassword(String email, String password);
}