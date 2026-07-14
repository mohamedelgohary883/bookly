import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final apikey = dotenv.env['API_KEY'];
    int retries = 3;

    for (int i = 0; i < retries; i++) {
      try {
        var response = await dio.get('$_baseUrl$endPoint&key=$apikey');
        return response.data;
      } on DioException catch (e) {
        final isLastAttempt = i == retries - 1;
        final isServerError =
            e.response?.statusCode == 503 || e.response?.statusCode == 500;

        if (isServerError && !isLastAttempt) {
          // استنى شوية قبل المحاولة تاني (زي 1 ثانية، 2 ثانية، 3 ثواني)
          await Future.delayed(Duration(seconds: i + 1));
          continue;
        }
        rethrow; // لو مش server error أو خلصت المحاولات، ارمي الخطأ عادي
      }
    }
    throw Exception('Failed after $retries retries');
  }
}
