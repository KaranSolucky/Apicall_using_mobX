import 'package:apicall_mobx/model/post.dart';
import 'package:apicall_mobx/model/postmodel.dart';
import 'package:apicall_mobx/model/user.dart';
import 'package:flutter/material.dart';

import '../model/usermodel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  UserModel userModel = UserModel();
  PostModel postModel = PostModel();

  @override
  void initState() {
    super.initState();
    // userModel.getUsersData();
    postModel.getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Post>>(
      future: postModel.postUser,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
              itemBuilder: (context, index) {
                var user = (snapshot.data as List<Post>)[index];
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.id.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(height: 5),
                      Text(user.userId.toString()),
                      SizedBox(height: 5),
                      Text(user.body.toString()),
                      SizedBox(height: 5),
                      Text(user.title.toString()),
                      SizedBox(height: 5),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: (snapshot.data as List<Post>).length);
        } else if (snapshot.hasError) {
          return Center(
            child: Text("${snapshot.error}"),
          );
        }
        return Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.cyanAccent,
          ),
        );
      },
    ));
  }
}
