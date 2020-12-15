import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'home/random_user_app.dart';

class Routes {
  Routes () {
    final FluroRouter router = FluroRouter();
    routesInit(router);
    runApp(MaterialApp(
      title: 'Random User',
      home: RandomUserApp(),
      debugShowMaterialGrid: false,
      onGenerateRoute: router.generator,
      theme: ThemeData(primaryColor: const Color(0xFF65A3FE)),
    ));
  }
}

// ================================ R O U T E S ================================ \\
void routesInit(FluroRouter router) {
  router.define('/home', handler: homeHandler, transitionType: TransitionType.fadeIn);
}


// ================================ H A N D L E R ================================ \\
Handler homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,dynamic> params) => RandomUserApp());
