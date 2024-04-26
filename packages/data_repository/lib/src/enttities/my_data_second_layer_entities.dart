import 'package:equatable/equatable.dart';

class MyDataSecondLayerEntity extends Equatable {
  final String color;
  final String shape;

  const MyDataSecondLayerEntity({
    required this.color,
    required this.shape,
  });

  Map<String, Object?> toDocument() {
    return {
      'color': color,
      'shape': shape,
    };
  }

  static MyDataSecondLayerEntity fromDocument(Map<String, dynamic> doc) {
    return MyDataSecondLayerEntity(
      color: doc['color'] as String,
      shape: doc['shape'] as String,
    );
  }

  @override
  List<Object?> get props => [
        color,
        shape,
      ];

  @override
  String toString() {
    return 'DataEntity: {color: $color, shape: $shape}';
  }
}
