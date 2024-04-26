import 'package:equatable/equatable.dart';

import 'my_data_second_layer_entities.dart';

class MyDataEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final MyDataSecondLayerEntity figure;
  final String? picture;

  const MyDataEntity({
    required this.id,
    required this.email,
    required this.name,
    required this.figure,
    this.picture,
  });

  Map<String, Object?> toDocument() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'figure': figure,
      'picture': picture,
    };
  }

  static MyDataEntity fromDocument(Map<String, dynamic> doc) {
    return MyDataEntity(
      id: doc['id'] as String,
      email: doc['email'] as String,
      name: doc['name'] as String,
      figure: MyDataSecondLayerEntity.fromDocument(
          doc['figure'] as Map<String, dynamic>),
      picture: doc['picture'] as String?,
    );
  }

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        figure,
        picture,
      ];

  @override
  String toString() {
    return 'DataEntity: {id: $id, email: $email, name: $name, figure: ${figure.toString()}, picture: $picture}';
  }
}
