import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_user_bloc/app_module/home/bloc/random_user_bloc.dart';
import 'package:random_user_bloc/app_module/home/model/user_model.dart';

class RandomUserDataWidget extends StatefulWidget {
  final List<UserModel> listUserModel;

  const RandomUserDataWidget({Key key, this.listUserModel}) : super(key: key);

  @override
  _RandomUserDataWidgetState createState() => _RandomUserDataWidgetState();
}


class _RandomUserDataWidgetState extends State<RandomUserDataWidget> {
  @override
  Widget build(BuildContext context) {
    UserModel user = widget.listUserModel[0];
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(user.picture.large),
            ),
            Text(
              "${user.name.first} ${user.name.last}",
              style: Theme.of(context).textTheme.title,
            ),
            Text(user.email, style: Theme.of(context).textTheme.subtitle),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(user.location.street.name, style: Theme.of(context).textTheme.body1),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(user.location.city, style: Theme.of(context).textTheme.body1),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Text(user.location.state, style: Theme.of(context).textTheme.body1),

            RaisedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
              child: Text('Reload'),
            ),


          ],
        ));
  }

}
