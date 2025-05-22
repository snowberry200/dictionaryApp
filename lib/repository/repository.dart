import 'package:phono/provider/provider.dart';
import 'dart:io';

import '../model/model.dart';

class WordRepo {
  Future<List<WordRersponse>> getInfoFromDictionary(String query) async {
    try {
      final getResponse = await HttpService.getResponse(query);
      if (getResponse.statusCode == 200) {
        return wordRersponseFromJson(getResponse.body);
      } else {
        return [];
      }
    } on SocketException {
      rethrow;
    } on FormatException {
      rethrow;
    } on HttpException {
      rethrow;
    }
  }
}
