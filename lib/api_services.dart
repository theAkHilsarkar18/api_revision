import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class ApiServices
{
  static const String apiKey = "982c919f6a934c36941d7a738662fe6d";
  static String api = "https://newsapi.org/v2/everything?q=tesla&from=2024-06-05&sortBy=publishedAt&apiKey=982c919f6a934c36941d7a738662fe6d";

  Future<Map?> apiCalling()
  async {
    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);
    if(response.statusCode==200)
      {
        print("-----------api called----------------");
        return jsonDecode(response.body);
      }
    return null;
  }


}