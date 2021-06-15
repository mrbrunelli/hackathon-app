import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Functions {

  static const ALL_LIST = 1;
  static const NEW_LIST = 2;
  static const USED_LIST = 3;

  static Future<List<dynamic>> getJson(String link) async {
    Uri uri = Uri.parse(link);
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }

  static String imgLink(String link){
    return link.replaceAll("~/", "http://172.29.16.1:8085/");
  }

  static String getCurrency(value) {
    NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return formatter.format(value);
  }


}