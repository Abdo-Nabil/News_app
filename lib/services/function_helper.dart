import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'constants.dart';
import 'dart:convert' as convert;

//https://newsapi.org/v2/top-headlines?country=eg&category=business&apiKey=65f7f556ec76449fa7dc7c0069f040ca

class FunctionHelper {
  //
  static Future<Map<String, dynamic>> getDate({required Uri url}) async {
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        return jsonResponse;
      } else {
        throw 'Sorry for that, please try again later (status code = ${response.statusCode})';
      }
    } on SocketException {
      throw 'No internet connection !';
    } on HttpException {
      throw 'Some thing went wrong, please try again later !';
    } on FormatException {
      throw 'Format Exception, Bad response !';
    } catch (error) {
      throw error;
    }
  }

  static Future<Map<String, dynamic>> getNews(String category) async {
    var url = Uri.https(
      'newsapi.org',
      '/v2/top-headlines',
      {
        'country': 'eg',
        'category': category,
        'apiKey': apiKey,
      },
    );
    return await getDate(url: url);
  }

  static Future<Map<String, dynamic>> getSearchResults(
      String searchedWord) async {
    var url = Uri.https(
      'newsapi.org',
      '/v2/top-headlines',
      {
        'country': 'eg',
        'q': searchedWord,
        'apiKey': apiKey,
      },
    );
    return await getDate(url: url);
  }

  static Future<ThemeMode> getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    late ThemeMode selectedMode;
    bool? storedVale = prefs.getBool('isDarkMode');
    if (storedVale == null) {
      await prefs.setBool('isDarkMode', false);
      selectedMode = ThemeMode.light;
    } else {
      storedVale
          ? selectedMode = ThemeMode.dark
          : selectedMode = ThemeMode.light;
    }
    return selectedMode;
  }
}
