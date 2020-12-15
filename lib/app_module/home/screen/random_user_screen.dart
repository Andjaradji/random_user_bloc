import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_bloc/app_module/home/bloc/random_user_bloc.dart';
import 'package:random_user_bloc/app_module/home/model/user_model.dart';
import 'package:random_user_bloc/app_module/home/model/user_response_model.dart';
import 'package:random_user_bloc/app_module/home/screen/random_user_loading_screen.dart';
import 'package:random_user_bloc/app_module/home/widgets/random_user_data_widget.dart';
import 'package:random_user_bloc/app_src/widgets/generic_error.dart';

class RandomUserScreen extends StatefulWidget {
  @override
  _RandomUserScreenState createState() => _RandomUserScreenState();
}

class _RandomUserScreenState extends State<RandomUserScreen> {
  RandomUserBloc bloc;

  @override
  void didChangeDependencies() {
    bloc = Provider.of<RandomUserBloc>(context, listen: false);
    _loadData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(
          child: StreamBuilder<UserResponseModel>(
              stream: bloc.randomUsers,
              builder: (BuildContext context,
                  AsyncSnapshot<UserResponseModel> snapshot) {
                Widget childWidget;

                if (!snapshot.hasData) {
                  childWidget = RandomUserLoadingScreen();
                } else {
                  if (snapshot.data.error == '') {
                    final List<UserModel> response = snapshot.data.results;
                    childWidget = RandomUserDataWidget(
                      listUserModel: response,
                    );
                  } else {
                    childWidget = GenericError(
                        refreshOnTap: () => bloc.refresh(),
                        errorMessage: '${snapshot.data.error}');
                  }
                }
                return AnimatedSwitcher(
                    duration: Duration(microseconds: 500),
                    switchInCurve: Curves.easeIn,
                    switchOutCurve: Curves.easeOut,
                    child: childWidget);
              }),
        ),

    ]
      ),
    );
  }

  void _loadData() {
    bloc.getUserResponseModel();
  }
}
