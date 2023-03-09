import 'dart:async';
import 'package:dio/dio.dart';

final dio = Dio();
String url = "http://35.198.197.31:12000/send_json";
Response response = Response(requestOptions: RequestOptions());
Future getHttp() async {
  response = await dio.get(url,
      options: Options(sendTimeout: const Duration(seconds: 10)));
}
