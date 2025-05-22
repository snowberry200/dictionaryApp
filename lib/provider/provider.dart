import 'package:http/http.dart' as http;

class HttpService {
  static String baseUrl = 'https://api.dictionaryapi.dev/api/v2/entries/';
  late String endpoint;
  static Future<http.Response> getResponse(endpoint) async {
    late String url = '$baseUrl$endpoint';
    Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      throw Exception('Invalid URL: $url');
    }
    http.Response getRequest = await http.get(uri);
    return getRequest;
  }
}
