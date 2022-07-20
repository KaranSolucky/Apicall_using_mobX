import 'package:apicall_mobx/api/api_services.dart';
import 'package:apicall_mobx/model/user.dart';
import 'package:mobx/mobx.dart';
part 'usermodel.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  final ApiService apiService = ApiService();
  @observable
  ObservableFuture<List<User>>? listUsersFuture;

  @action
  Future fetchUsersData() => listUsersFuture = ObservableFuture(apiService
      .getApiData("https://jsonplaceholder.typicode.com/users")
      .then((users) => users));

  void getUsersData() {
    fetchUsersData();
  }
}
