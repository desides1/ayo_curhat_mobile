import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  // Future<Response> postUser(Map data) =>
  //     post('http://youapi/users', body: data);

  Future<Response> authLogin(var data) {
    var header = {
      'Accept': 'applications/json',
    };
    return post('http://10.0.2.2:8000/api/login', data, headers: header);
  }
}