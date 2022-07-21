import 'package:apicall_mobx/model/post.dart';
import 'package:apicall_mobx/model/user.dart';
import 'package:flutter/material.dart';

import "dart:convert";
import "package:http/http.dart" as http;

class ApiService {
  late List<User> listUsers;

  Future getApiData(String url) async {
    final apiResponse = await http.get(Uri.parse(url));
    if (apiResponse.statusCode == 200) {
      final data = jsonDecode(apiResponse.body);
      print(data);
      listUsers = (data as List).map((json) {
        return User.fromJSON(json);
      }).toList();
      return listUsers;
    } else {
      print("error");
    }
  }

  late List<Post> listPosts;
  Future getData(String url) async {
    final apiResponse = await http.get(Uri.parse(url));
    if (apiResponse.statusCode == 200) {
      final data = jsonDecode(apiResponse.body);
      print(data);
      listPosts = (data as List).map((json) {
        return Post.fromJSON(json);
      }).toList();
      return listPosts;
    } else {
      print("error");
    }
  }
}
