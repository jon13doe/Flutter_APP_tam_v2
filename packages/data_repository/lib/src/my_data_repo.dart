import 'data_repo.dart';
import 'enttities/entities.dart';
import 'my_data_provider.dart';

class MyDataRepo implements DataRepo {
  final _provider = MyDataProvider();

  Future<MyDataEntity> fetchData() {
    return _provider.fetchData();
  }

}

class NetworkError extends Error {}
