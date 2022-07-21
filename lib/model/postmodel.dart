import 'package:apicall_mobx/api/api_services.dart';
import 'package:mobx/mobx.dart';

import 'post.dart';
part 'postmodel.g.dart';

class PostModel = _PostModelBase with _$PostModel;

abstract class _PostModelBase with Store {
  final ApiService apiService = ApiService();
  @observable
  ObservableFuture<List<Post>>? postUser;
  @action
  Future fetchUsersData() => postUser = ObservableFuture(apiService
      .getData("https://jsonplaceholder.typicode.com/posts")
      .then((users) => users));

  void getUsersData() {
    fetchUsersData();
  }
}
