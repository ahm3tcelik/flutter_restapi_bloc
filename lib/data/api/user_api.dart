import 'package:http/http.dart' as http;

class UserApi {
  static const String baseUrl =
      "http://my-json-server.typicode.com/ahm3tcelik/demo/";

  static Future<http.Response> getUsers() {
    return http.get("${baseUrl}/users");
  }

  static Future<http.Response> getUserById(int id) {
    return http.get("${baseUrl}/users?id=${id}");
  }
}
