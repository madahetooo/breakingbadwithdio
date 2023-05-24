import 'dart:async';
import 'package:breakingbad/character.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class CharacterApi {
  static Future getCharacters() {
    // return http.get(Uri.parse("https://breakingbadapi.com/api/characters"));
    return http.get(Uri.parse("https://api.breakingbadquotes.xyz/v1/quotes/50"));
  }

  // static Future getCharacters() async {
  //   try {
  //     var response = await Dio()
  //         .get('https://api.breakingbadquotes.xyz/v1/quotes/50');
  //     print(response);
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  // Future<List<Character>> getCharacters() async {
  //   try {
  //     Response response = await Dio().get('https://api.breakingbadquotes.xyz/v1/quotes/50');
  //     if (response.statusCode == 200) {
  //       var getUsersData = response.data as List;
  //       var listUsers = getUsersData.map((i) => Character.fromJson(i)).toList();
  //       return listUsers;
  //     } else {
  //   throw Exception('Failed to load users');
  //   }
  //   } catch (e) {
  //   print(e);
  //   }
  // }
}
