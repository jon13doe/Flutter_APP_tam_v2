import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import 'enttities/entities.dart';

class MyDataProvider {
  final String _url =
      'https://904f68eea58d4b288aa1faa924d3ba00.api.mockbin.io/';

  Future<MyDataEntity> fetchData() async {
    try {
      var response = await http.get(Uri.parse(_url));
      log(response.body);
      MyDataEntity data = MyDataEntity.fromDocument(jsonDecode(response.body));
      return data;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
