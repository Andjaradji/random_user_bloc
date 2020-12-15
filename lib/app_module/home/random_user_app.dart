import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_bloc/app_module/home/bloc/random_user_bloc.dart';
import 'package:random_user_bloc/app_module/home/screen/random_user_screen.dart';
import 'package:random_user_bloc/app_src/resources/util/app_screen_util.dart';
import 'package:random_user_bloc/app_src/widgets/button_phone_back.dart';

class RandomUserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppScreenUtil().setScreenAwareConstant(context);
    return Provider<RandomUserBloc>(
      create: (_) => RandomUserBloc(),
      dispose: (_, RandomUserBloc bloc) => bloc.dispose(),
      child: WillPopScope(
        onWillPop: () => phoneBackButton.onPop(context),
        child: Scaffold(
          body: RandomUserScreen(),
        ),
      ),
    );
  }
}
