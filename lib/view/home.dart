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

  @override
  void initState() {
    super.initState();
    userModel.getUsersData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<User>>(
      future: userModel.listUsersFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
              itemBuilder: (context, index) {
                var user = (snapshot.data as List<User>)[index];
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.userName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      SizedBox(height: 5),
                      Text(user.userEmail),
                      SizedBox(height: 5),
                      Text(user.userAddress.userStreet +
                          "" +
                          user.userAddress.userSuite +
                          "" +
                          user.userAddress.userCity +
                          "" +
                          user.userAddress.userZipCode),
                      SizedBox(height: 5),
                      Text(user.userPhone),
                      SizedBox(height: 5),
                      Text(user.userWebsite),
                      SizedBox(height: 5),
                      Text(user.userCompany.name),
                      SizedBox(height: 5),
                      Text(user.userCompany.catchPhrase),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: (snapshot.data as List<User>).length);
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
