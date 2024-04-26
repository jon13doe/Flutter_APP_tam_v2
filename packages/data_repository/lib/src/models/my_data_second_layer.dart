import 'package:equatable/equatable.dart';

import '../enttities/entities.dart';

class MyDataSecondLayer extends Equatable {
  final String color;
  final String shape;

  const MyDataSecondLayer({
    required this.color,
    required this.shape,
  });

  static const empty = MyDataSecondLayer(
    color: '',
    shape: '',
  );

  MyDataSecondLayer copyWith({
    String? color,
    String? shape,
  }) {
    return MyDataSecondLayer(
      color: color ?? this.color,
      shape: shape ?? this.shape,
    );
  }

  bool get isEmpty => this == MyDataSecondLayer.empty;

  bool get isNotEmpty => this != MyDataSecondLayer.empty;

  MyDataSecondLayerEntity toEntity() {
    return MyDataSecondLayerEntity(
      color: color,
      shape: shape,
    );
  }

  MyDataSecondLayerEntity fromEntity(MyDataSecondLayerEntity entity) {
    return MyDataSecondLayerEntity(
      color: entity.color,
      shape: entity.shape,
    );
  }

  @override
  List<Object?> get props => [
        color,
        shape,
      ];
}
