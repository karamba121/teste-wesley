import 'package:tota/src/auth/domain/entities/user_entity.dart';
import 'package:tota/src/auth/domain/repositories/user_repository.dart';

abstract class IRegisterUserWithEmailAndPassword{
  Future<UserEntity> call(String email, String password);
}

class RegisterUserWithEmailAndPassword implements IRegisterUserWithEmailAndPassword{
  final IUserRepository repository;

  RegisterUserWithEmailAndPassword(this.repository);

  @override
  Future<UserEntity> call(String email, String password) {
    return repository.registerUserWithEmailAndPassword(email, password);
  }
}