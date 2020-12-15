import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButtonPhoneBack {
  Future<bool> onPop (BuildContext context, {String navigate = ''}) {
    if (navigate != '') {
      Navigator.pushReplacementNamed(context, navigate);
      return Future<bool>.value(false);
    }

    return showDialog(
      context: context,
      builder : (_) => AlertDialog(
        title: const Text('Apakah Anda ingin keluar dari aplikasi?'),
        actions: <Widget>[
          FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('No')),
          FlatButton(
              onPressed: () async {
                SystemChannels.platform.invokeMethod<dynamic>('SystemNavigator.pop');
              },
              child: null
          )
        ],
      )
    );

}
}

final ButtonPhoneBack phoneBackButton = ButtonPhoneBack();
