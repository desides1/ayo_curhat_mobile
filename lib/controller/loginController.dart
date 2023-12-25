// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class LoginApi {
//   final String _url = 'http://127.0.0.1:8000/api/login';
//   var token;

//   _getToken() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     token = jsonDecode(localStorage.getString('token'))['token'];
//   }

//   auth(data, apiURL) async {
//     var fullUrl = _url + apiURL;
//     return await http.post(fullUrl,
//         body: jsonEncode(data), headers: _setHeaders());
//   }

//   getData(apiURL) async {
//     var fullUrl = _url + apiURL;
//     await _getToken();
//     return await http.get(
//       fullUrl,
//       headers: _setHeaders(),
//     );
//   }

//   _setHeader() => {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//         'Authorization': 'Bearer $token',
//       };
// }
