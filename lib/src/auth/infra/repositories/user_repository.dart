import 'package:tota/src/auth/domain/entities/user_entity.dart';
import 'package:tota/src/auth/domain/repositories/user_repository.dart';
import 'package:tota/src/auth/infra/datasources/user_datasource.dart';

class UserRepository implements IUserRepository{
  final IUserDatasource datasource;

  UserRepository(this.datasource);

  @override
  Future<UserEntity> registerUserWithEmailAndPassword(String email, String password) {
    final userEntity = datasource.registerUserWithEmailAndPassword(email, password);

    return Future.value( UserEntity(email: '', id: ''));
  }

}