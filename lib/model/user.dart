import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0) // ID da classe

class UserModel extends HiveObject {
  @HiveField(0) // indice do atributo
  late String user_id;
  @HiveField(1) // indice do atributo
  late String user_name;
  @HiveField(2) // indice do atributo
  late String email;
  @HiveField(3) // indice do atributo
  late String endereco;
  @HiveField(4) // indice do atributo
  late String telefone;
}
