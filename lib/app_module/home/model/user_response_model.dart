import 'package:random_user_bloc/app_module/home/model/user_model.dart';

class UserResponseModel {
  final List<UserModel> results;
  final String error;

  UserResponseModel(this.results, this.error);

  UserResponseModel.fromJson(Map<String, dynamic> json)
      : results =
  (json["results"] as List).map((i) => new UserModel.fromJson(i)).toList(),
        error = "";

  UserResponseModel.withError(String errorValue)
      : results = List(),
        error = errorValue;
}
