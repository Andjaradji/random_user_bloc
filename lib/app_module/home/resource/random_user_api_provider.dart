import 'dart:convert';

import 'package:dio/dio.dart' show Response, DioError;
import 'package:random_user_bloc/app_module/home/model/user_response_model.dart';
import 'package:random_user_bloc/app_src/model/json_return_error_model.dart';
import 'package:random_user_bloc/app_src/resources/connection/network_connection.dart';
import 'package:random_user_bloc/app_src/resources/util/app_string.dart';

class RandomUserApiProvider with NetworkConnection {
  RandomUserApiProvider(this._indexList, this._valueList);

  final List<String> _indexList;
  final List<dynamic> _valueList;

  Future<UserResponseModel> getRandomUser() async {
    Response<dynamic>  response;
    try {
      response = await getJSON('${AppString.baseUrl}/api/', 'GET', _indexList, _valueList, '');
      return UserResponseModel.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (error){
      if (error.response != null) {
        final JsonReturnErrorModel jsonResponse = JsonReturnErrorModel.fromJson(
            jsonDecode(error.response.data as String) as Map<String, dynamic>);
        return UserResponseModel.withError(jsonResponse.message);
      } else {
        return UserResponseModel.withError(handleError(error));
      }
    }
  }
}
