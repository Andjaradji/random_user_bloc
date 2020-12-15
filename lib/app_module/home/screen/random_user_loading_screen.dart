import 'package:flutter/material.dart';
import 'package:random_user_bloc/app_src/resources/util/app_screen_util.dart';

class RandomUserLoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Loading data from API.....'),
          SizedBox(height: AppScreenUtil.s21),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
