import 'package:equatable/equatable.dart';
import 'package:flutter_package_data_fetching_data_repository/data_repository.dart';

class MyData extends Equatable {
  final String id;
  final String email;
  final String name;
  final MyDataSecondLayer figure;
  final String? picture;

  const MyData({
    required this.id,
    required this.email,
    required this.name,
    required this.figure,
    this.picture,
  });

  static const empty = MyData(
    id: '',
    email: '',
    name: '',
    figure: MyDataSecondLayer.empty,
    picture: '',
  );

  MyData copyWith({
    String? id,
    String? email,
    String? name,
    MyDataSecondLayer? figure,
    String? picture,
  }) {
    return MyData(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      figure: figure ?? this.figure,
      picture: picture ?? this.picture,
    );
  }

  bool get isEmpty => this == MyData.empty;

  bool get isNotEmpty => this != MyData.empty;

  MyDataEntity toEntity() {
    return MyDataEntity(
      id: id,
      email: email,
      name: name,
      figure: figure.toEntity(),
      picture: picture,
    );
  }

  MyDataEntity fromEntity(MyDataEntity entity) {
    return MyDataEntity(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      figure: entity.figure,
      picture: entity.picture,
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
}
