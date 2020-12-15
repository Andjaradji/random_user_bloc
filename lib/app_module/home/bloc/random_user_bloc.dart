
import 'package:random_user_bloc/app_module/home/resource/random_user_api_provider.dart';
import 'package:rxdart/subjects.dart';
import 'package:random_user_bloc/app_module/home/model/user_response_model.dart';


class RandomUserBloc {
  final BehaviorSubject<UserResponseModel> _randomUsers = BehaviorSubject<UserResponseModel>();
  Stream<UserResponseModel> get randomUsers => _randomUsers;


  Future<void> getUserResponseModel () async {
    final UserResponseModel response =  await RandomUserApiProvider (<String>[],<String>[]).getRandomUser();

    if (response.error == '') {
      _randomUsers.sink.add(response);
    } else {
      _randomUsers.sink.addError(response.error);
    }
  }

  void dispose () {
    _randomUsers.close();
  }

  Future<void> refresh() async {
    _randomUsers.sink.add(null);
    getUserResponseModel();
  }
}