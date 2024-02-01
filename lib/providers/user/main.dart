
import 'dart:convert';
import 'package:flutter_app/constants/main.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_app/models/user/main.dart';

part 'main.g.dart';

const String getUserEndpoint = 'english-united-states/male';

@riverpod
Future<User> getUser(GetUserRef ref) async {
  final response = await http.get(Uri.https(randomNameGeneratorBaseURL, getUserEndpoint));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return User.fromJson(json);
}