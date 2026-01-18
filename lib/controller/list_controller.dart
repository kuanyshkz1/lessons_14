import 'dart:convert';

import 'package:lesson_14/data/character_models.dart';
import 'package:http/http.dart'as http;

class ListController {
  static Future<List<CharacterModel>> getCharacters() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );

  final Map<String, dynamic> json = jsonDecode(response.body); 

  final List<Map<String, dynamic>> result = json['id'];

  return result.map((e) => CharacterModel.fromJson(e)).toList();
  }
}