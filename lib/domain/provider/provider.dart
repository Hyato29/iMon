import 'package:http/http.dart' as http;

import 'package:ngitengs/config.dart';

class Provider {
  final url = ConfigEnvironments.getEnvironments();

  Future<http.Response> register(
          String name, String email, String pass, String confPass) =>
      http.post(Uri.parse("https://api.imon.blocdev.id/register"), body: {
        'name': name,
        'email': email,
        'password': pass,
        'confirm_password': confPass
      });

  Future<http.Response> login(String email, String pass) =>
      http.post(Uri.parse("https://api.imon.blocdev.id/login"),
          body: {'email': email, 'password': pass});

  Future<http.Response> transactionApi() =>
      http.get(Uri.parse("https://dummyjson.com/product"));
}
