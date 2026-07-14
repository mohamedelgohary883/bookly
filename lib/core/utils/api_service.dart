import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final apiKey = dotenv.env['API_KEY'];
    var response = await dio.get('$_baseUrl$endPoint&key=$apiKey');
    return response.data;
  }
}
